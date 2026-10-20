#!/usr/bin/env python3
"""Ana Beyin: read-only, public feature research. Stdlib Python >=3.10."""
import argparse, hashlib, html, ipaddress, json, re, socket, time
from pathlib import Path
from html.parser import HTMLParser
from urllib import request, parse, robotparser, error

AGENT = "AnaBeyinPublicAudit/0.1 (read-only, research)"
MAX_SIZE = 800_000

class TextOnly(HTMLParser):
    def __init__(self):
        super().__init__(convert_charrefs=True)
        self.parts, self.headings = [], []
        self.skip = 0
        self.head = False
    def handle_starttag(self, tag, attrs):
        if tag in ("script","style","noscript","svg"): self.skip += 1
        if tag in ("h1","h2","h3"): self.head = True
    def handle_endtag(self, tag):
        if tag in ("script","style","noscript","svg"): self.skip = max(0,self.skip-1)
        if tag in ("h1","h2","h3"): self.head = False
    def handle_data(self, data):
        if not self.skip:
            s = " ".join(html.unescape(data).split())
            if s:
                self.parts.append(s)
                if self.head: self.headings.append(s)

class NoRedirect(request.HTTPRedirectHandler):
    def redirect_request(self, req, fp, code, msg, headers, newurl): return None

def ensure_public_url(url, allowed):
    u = parse.urlsplit(url)
    if u.scheme != "https" or u.hostname not in allowed or u.username or u.password or u.port not in (None,443):
        raise ValueError("HTTPS host must be explicitly allowlisted")
    for item in socket.getaddrinfo(u.hostname,443,type=socket.SOCK_STREAM):
        if not ipaddress.ip_address(item[4][0]).is_global:
            raise ValueError("Non-public destination")
    return u.hostname

def html_from_url(url, allowed):
    host = ensure_public_url(url, allowed)
    opener = request.build_opener(NoRedirect)
    robots_url = "https://" + host + "/robots.txt"
    try:
        with opener.open(request.Request(robots_url,headers={"User-Agent":AGENT}),timeout=10) as f:
            rules = f.read(100000).decode("utf-8","replace")
        rp = robotparser.RobotFileParser()
        rp.parse(rules.splitlines())
        if not rp.can_fetch(AGENT,url): raise PermissionError("robots.txt disallows URL")
    except error.HTTPError as e:
        if e.code not in (404,410): raise PermissionError("robots not verified: "+str(e.code))
    with opener.open(request.Request(url,headers={"User-Agent":AGENT,"Accept":"text/html"}),timeout=12) as f:
        if f.headers.get_content_type() != "text/html": raise ValueError("Only HTML supported")
        raw = f.read(MAX_SIZE+1)
        if len(raw)>MAX_SIZE: raise ValueError("HTML too large")
        return raw.decode(f.headers.get_content_charset() or "utf-8","replace")

def scan(config,fixture=None):
    result = []
    for entry in config["pages"]:
        out = {"name":entry["name"],"url":entry["url"]}
        try:
            raw = Path(fixture).read_text(encoding="utf-8") if fixture else html_from_url(entry["url"],set(config["allowed_hosts"]))
            doc = TextOnly()
            doc.feed(raw)
            body = " ".join(doc.parts)
            out.update(status="OK",sha256=hashlib.sha256(raw.encode()).hexdigest(),headings=doc.headings[:20],matches=[])
            for name, terms, implementation in config["features"]:
                hits = []
                for term in terms:
                    m = re.search(r"(?<!\w)"+re.escape(term)+r"(?!\w)",body,re.I)
                    if m: hits.append({"term":term,"excerpt":body[max(0,m.start()-70):m.end()+90]})
                if hits:
                    out["matches"].append({"name":name,"evidence":hits[:2],"implementation":implementation})
        except Exception as exc:
            out["status"] = "SKIPPED: "+str(exc)[:160]
        result.append(out)
        print(out["name"],out["status"])
        if not fixture: time.sleep(1.2)
    return result

def markdown(config,items):
    lines = ["# Ana Beyin — "+config["target"]+" kamuya açık özellik haritası","",
      "> Bu çıktı otomatik anahtar kelime ipuçlarıdır. İşlev doğrulaması ve lisans onayı değildir.",""]
    for item in items:
        lines.append("## "+item["name"])
        lines.append("Kaynak: "+item["url"])
        lines.append("Durum: "+item["status"])
        for match in item.get("matches",[]):
            lines.append("- **"+match["name"]+"** → "+match["implementation"])
            for evidence in match["evidence"]:
                lines.append("  - "+evidence["term"]+": "+evidence["excerpt"].replace("\n"," ")[:180])
        lines.append("")
    lines += ["## Sonraki aşama","- Yeni gereksinimleri insan onayıyla tasarım şartnamesine dönüştür.",
        "- Rakibin HTML/CSS/JS, markası veya gizli API'sini kopyalamadan özgün Ana Beyin kodu yaz.",
        "- Her araç ve Skill için lisans, kaynak ve güvenlik incelemesi uygula.",""]
    return "\n".join(lines)

def main():
    p=argparse.ArgumentParser()
    p.add_argument("--config",type=Path,default=Path(__file__).with_name("targets.json"))
    p.add_argument("--output",type=Path,default=Path(__file__).with_name("reports"))
    p.add_argument("--fixture",type=Path,default=None)
    args=p.parse_args()
    conf=json.loads(args.config.read_text(encoding="utf-8"))
    items=scan(conf,args.fixture)
    args.output.mkdir(parents=True,exist_ok=True)
    (args.output/"audit.json").write_text(json.dumps(items,ensure_ascii=False,indent=2),encoding="utf-8")
    (args.output/"audit.md").write_text(markdown(conf,items),encoding="utf-8")
    print("Wrote:",args.output/"audit.md")

if __name__=="__main__": main()
