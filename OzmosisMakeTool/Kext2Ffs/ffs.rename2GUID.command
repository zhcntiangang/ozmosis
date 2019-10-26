#!/bin/bash
#Written by 6Fehler 2013
cd "$(dirname "$0")"
echo
for i in *.ffs
do
GUID=$(xxd -l 20 -ps -c 20 -u $i)
j=$(echo "${GUID:6:2}${GUID:4:2}${GUID:2:2}${GUID:0:2}-${GUID:10:2}${GUID:8:2}-${GUID:14:2}${GUID:12:2}-${GUID:16:2}${GUID:18:2}-${GUID:20:2}${GUID:22:2}${GUID:24:2}${GUID:26:2}${GUID:28:2}${GUID:30:2}")
mv "$i" "$j.$i"
echo "$i in $j.$i umbenannt"
done
echo
exit
