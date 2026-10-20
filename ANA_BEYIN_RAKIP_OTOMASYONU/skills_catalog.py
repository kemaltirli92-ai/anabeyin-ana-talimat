#!/usr/bin/env python3
"""Index local SKILL.md metadata read-only. Never install or execute skills."""
import argparse,csv,re
from pathlib import Path
FLAGS={
 "shell":r"\b(?:curl|wget|bash|powershell|sudo|eval|subprocess)\b",
 "secrets":r"\b(?:API[_ -]?KEY|password|\.env|private key|ssh key)\b",
 "network":r"\b(?:https?://|webhook|POST|exfiltrat)\b",
 "destructive":r"\b(?:delete|erase|wipe|rm -rf|drop table)\b"
}
def metadata(text):
    if not text.startswith("---"): return {}
    data=text.split("---",2)
    if len(data)<3:return {}
    result={}
    for line in data[1].splitlines():
        m=re.match(r"^([a-z_-]+):\s*(.+)$",line.strip())
        if m: result[m[1]]=m[2].strip(' "\'')
    return result
def main():
    ap=argparse.ArgumentParser()
    ap.add_argument("source",type=Path)
    ap.add_argument("--output",type=Path,default=Path("skills_index.csv"))
    args=ap.parse_args()
    if not args.source.is_dir():ap.error("Provide an existing local skill directory")
    records=[]
    for f in list(args.source.rglob("SKILL.md"))[:10000]:
        if f.stat().st_size>150000:continue
        s=f.read_text(encoding="utf-8",errors="replace")
        m=metadata(s)
        records.append({"name":m.get("name",f.parent.name),"description":m.get("description",""),
          "license":m.get("license","UNVERIFIED"),"path":str(f),
          "risk_hints":", ".join(k for k,v in FLAGS.items() if re.search(v,s,re.I)),
          "approved":"NO"})
    args.output.parent.mkdir(parents=True,exist_ok=True)
    with args.output.open("w",encoding="utf-8-sig",newline="") as handle:
        w=csv.DictWriter(handle,fieldnames=["name","description","license","path","risk_hints","approved"])
        w.writeheader();w.writerows(records)
    print("Indexed",len(records),"skills; NONE installed or approved:",args.output)
if __name__=="__main__":main()
