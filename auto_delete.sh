#!/bin/bash
prev_count=0
fpath=/home/ayyappan/Documents
find $fpath -type d -mtime +1 -exec ls -ltrh {} \; > /tmp/folder.out
find $fpath -type d -mtime +1 -exec rm -rf {} \;
count=$(cat /tmp/folder.out | wc -l)
if [ "$prev_count" -lt "$count" ] ; then
MESSAGE="/tmp/file1.out"
TO="ayyappanhsr97@gmail.com"
echo "+----------------------------------------------------+" >> $MESSAGE
echo "" >> $MESSAGE
cat /tmp/folder.out | awk '{print $6,$7,$9}' >> $MESSAGE
echo "" >> $MESSAGE
fi
