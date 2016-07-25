#!/usr/bin/python
import wget
import os
import hashlib
import re
import codecs

downloaddir="downloadcheck"

try:
    os.makedirs(downloaddir)
except:
    print("Couldn't make directory, trying to continue.")

for root, dirs, files in os.walk('src'):
    for name in files:
        name = name.strip()
        if not re.match(".*\.url\.txt$", name):
            continue
        with codecs.open(os.path.join(root,name), 'r', 'utf-8') as f:
            url=f.readline()
            url=url.strip()
            basename=name[:-8]
            print("Downloading ["+url+"]")
            basepath=os.path.join(root,basename)
            downloadpath=os.path.join(downloaddir,basename)
            wget.download(url, out=downloadpath)
            basemd5 = hashlib.md5(open(basepath, 'rb').read()).hexdigest()
            downloadmd5 = hashlib.md5(open(downloadpath, 'rb').read()).hexdigest()
            print()
            if basemd5 != downloadmd5:
                print("Mismatch for file: "+basepath)
