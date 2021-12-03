#!/system/bin/sh
module=/data/adb/modules/
conflict=$(find /data/adb -not -path -iname "*.prop")
for i in $conflict; do
   search=$(echo "$i" | sed -e 's/\// /g' | awk '{print $4}')
   if grep -q 'model' $i 2>/dev/null; then
     touch $module$search/remove
   fi
done
