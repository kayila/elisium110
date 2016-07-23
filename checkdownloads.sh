#!/usr/bin/bash
find src/ -iname '*.url.txt' -exec cat {} \; | wget -i - -O /dev/null -o downloads.log
grep -B 2 "404 Not Found" downloads.log
#grep -B 2 "307 Temporary" downloads.log
