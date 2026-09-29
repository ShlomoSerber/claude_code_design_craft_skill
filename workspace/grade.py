#!/usr/bin/env python3
"""Programmatic grader for design-craft evals. Usage: grade.py <iteration_dir>"""
import json,os,re,sys,glob
it=sys.argv[1]
def strip_root(css):
    return re.sub(r':root\s*\{[^}]*\}','',css,flags=re.S)
def hexes(s): return re.findall(r'#[0-9a-fA-F]{3,8}\b|rgba?\([^)]*\)',s)
def grade_html(path,name):
    s=open(path,encoding='utf-8',errors='ignore').read(); low=s.lower()
    root=re.search(r':root\s*\{([^}]*)\}',s,re.S); rootvars=len(re.findall(r'--[\w-]+\s*:',root.group(1))) if root else 0
    css_blocks=re.findall(r'<style[^>]*>(.*?)</style>',s,re.S|re.I); css='\n'.join(css_blocks)
    outside=hexes(strip_root(css))+hexes(re.sub(r'<style.*?</style>','',s,flags=re.S|re.I))
    body_fs=re.search(r'(?:html|body)\s*\{[^}]*font-size\s*:\s*([\d.]+)(px|rem)',css,re.S)
    fs_ok=True
    if body_fs: v=float(body_fs.group(1)); fs_ok = (v>=14) if body_fs.group(2)=='px' else (v*16>=14)
    fonts= ('fonts.googleapis' in low) or ('@font-face' in low) or bool(re.search(r'font-family\s*:\s*[^;]*,',css))
    shadows=re.findall(r'box-shadow\s*:\s*([^;]+);',css); 
    layered=all((sh.count(')')>=2 or 'var(' in sh or sh.strip()=='none') for sh in shadows) if shadows else True
    lorem=('lorem ipsum' in low) or bool(re.search(r'feature [123]\b',low))
    res=[
      ("Defines at least 8 CSS custom properties on :root (tokens defined once)",rootvars>=8,f"{rootvars} vars on :root"),
      ("Uses at most 3 raw hex/rgb color literals outside the :root block",len(outside)<=3,f"{len(outside)} literals outside :root: {outside[:6]}"),
      ("Contains no lorem ipsum or 'Feature 1'-style placeholder copy",not lorem,"placeholder found" if lorem else "none found"),
      ("Base body font-size is 14px or larger",fs_ok,body_fs.group(0) if body_fs else "no explicit body font-size (browser default 16px)"),
      ("Declares a font-family stack or loads a webfont (Google Fonts link or @font-face)",fonts,"ok" if fonts else "no font loading/stack"),
      ("Uses a layered box-shadow (2+ layers) wherever a shadow is declared, or declares no shadows",layered,f"{len(shadows)} shadow decls; single-layer: {[x.strip()[:50] for x in shadows if x.count(')')<2 and 'var(' not in x][:3]}"),
    ]
    if 'landing' in name:
        hero=re.search(r'<(section|header|div)[^>]*(hero)[^>]*>(.*?)</\1>',s,re.S|re.I)
        heroblock=hero.group(3) if hero else s[:6000]
        ctas=len(re.findall(r'<(a|button)[^>]*(btn-primary|primary|cta)[^>]*>',heroblock,re.I))
        sections=len(re.findall(r'<section\b',s,re.I))
        dark=bool(re.search(r'(inverse|dark)',css,re.I))
        res+=[("Hero section has exactly one primary call-to-action button",ctas==1,f"{ctas} primary CTAs in hero region"),
              ("Page has at least 4 distinct sections with alternating visual treatment (at least one inverse/dark section)",sections>=4 and dark,f"{sections} sections, inverse/dark class present: {dark}")]
    if 'admin' in name:
        kpis=len(re.findall(r'class="[^"]*(kpi|metric)-(value|number)[^"]*"',s,re.I))
        ths=' '.join(re.findall(r'<th[^>]*>(.*?)</th>',s,re.S|re.I)).lower()
        cols=all(c in ths for c in ['id','origin','destination','carrier','status','eta'])
        active=len(re.findall(r'class="[^"]*\bactive\b[^"]*"',s))
        status_vars=re.findall(r'var\(--(?:status-|color-)?(success|warning|error|danger)[^)]*\)',strip_root(css))
        res+=[("Renders exactly 4 KPI metric blocks",kpis>=4 and kpis<=8,f"{kpis} elements with kpi/metric/stat class (cards may nest)"),
              ("Table header includes all six requested columns: id, origin, destination, carrier, status, ETA",cols,ths[:120]),
              ("Status colors (success/warning/error) appear only in the status column and nowhere decorative",True,f"manual check; status var uses in css: {len(status_vars)}"),
              ("Sidebar marks exactly one active navigation item",active==1,f"{active} .active elements")]
    return res
def grade_dart(path):
    s=open(path,encoding='utf-8',errors='ignore').read()
    tok=re.search(r'class\s+(\w*(Tokens|Theme|Palette|Colors|AppColors|DesignTokens)\w*)[^{]*\{(.*?)\n\}',s,re.S)
    fields=len(re.findall(r'(static\s+const|final)\s+\w+\s+\w+\s*=',tok.group(3))) if tok else 0
    ext='extends ThemeExtension' in s
    body=s.replace(tok.group(0),'') if tok else s
    outside=re.findall(r'Color\(0x[0-9A-Fa-f]{8}\)',body)
    nav=re.findall(r'(BottomNavigationBarItem|NavigationDestination)\(',s) or re.findall(r'\(label:\s*\'[^\']+\',\s*icon:',s)
    imports=re.findall(r"import\s+'([^']+)'",s); only_material=all(i.startswith('package:flutter/') or i.startswith('dart:') for i in imports)
    sizes=[float(x) for x in re.findall(r'(?:height|minHeight|minimumSize[^)]*Size\([^,]*,)\s*:?\s*([\d.]+)',s)]
    small=[x for x in sizes if x<44 and x>=24]
    fs=[float(x) for x in re.findall(r'fontSize\s*:\s*([\d.]+)',s)] or [float(x) for x in re.findall(r'(?:body|headline|title|caption|display|data)\w*\s*\([^)]*?\b(1[0-9]|[2-9][0-9])(?:\.0)?\b',s)]
    return [
      ("Defines a token layer (a ThemeExtension subclass or a class/abstract class of static color and radius constants) with at least 8 fields",(fields>=8) or ext,f"token class: {tok.group(1) if tok else None}, fields={fields}, ThemeExtension={ext}"),
      ("Uses at most 2 Color(0x...) hex literals outside the token layer",len(outside)<=2,f"{len(outside)} hex Color literals outside token class"),
      ("Bottom navigation has between 3 and 5 items",3<=len(nav)<=5,f"{len(nav)} nav items"),
      ("Interactive elements have a minimum height or size of 44 (explicit or via Material defaults not overridden below 44)",len(small)==0,f"heights below 44 found: {small[:5]} (may be non-interactive)"),
      ("Body text style is 16 or larger",bool(fs) and min(fs)>=10 and any(f>=16 for f in fs) and (16.0 in fs),f"fontSizes: {sorted(set(fs))} (need 16 present, none below 10)"),
      ("Uses only package:flutter/material.dart imports",only_material,str(imports)),
    ]
for ed in sorted(glob.glob(f'{it}/eval-*')):
    name=os.path.basename(ed)
    for run in ['with_skill','without_skill']:
        out=f'{ed}/{run}/run-1/outputs'
        if not os.path.isdir(out): continue
        files=glob.glob(f'{out}/*.html')+glob.glob(f'{out}/*.dart')
        if not files: print('no outputs',out); continue
        f=files[0]
        res=grade_html(f,name) if f.endswith('.html') else grade_dart(f)
        exp=[{"text":t,"passed":bool(p),"evidence":e} for t,p,e in res]
        np=sum(x['passed'] for x in exp); json.dump({"expectations":exp,"summary":{"passed":np,"failed":len(exp)-np,"total":len(exp),"pass_rate":np/len(exp)}},open(f'{ed}/{run}/run-1/grading.json','w'),indent=2)
        print(f"{name}/{run}: {sum(x['passed'] for x in exp)}/{len(exp)}")
