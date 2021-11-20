UM=1
SKIPUNZIP=1
TEXT1="Unlock Max Game Graphics/FPS Mode In $(getprop ro.product.system.brand) Device. "
TEXT2="𝗨𝗻𝗹𝗼𝗰𝗸𝗲𝗿 𝗠𝗼𝗱𝗲: "
RM_RF() {
rm -rf $MODPATH/LICENSE 2>/dev/null
rm -rf $MODPATH/README.md 2>/dev/null
}
MODPRINT() {
ui_print ""
ui_print "  ╭━━┳╮╭╮╱╱╱╱╭━━╮ "
ui_print "  ┃╭╮┃┣╋╋┳┳━╮┃━━╋┳┳━┳━┳┳╮ "
ui_print "  ┃┣┫┃━┫┃╭┫╋╰╋━━┃┃┃╋┃┻┫╭╯ "
ui_print "  ╰╯╰┻┻┻┻╯╰━━┻━━┻━┫╭┻━┻╯ "
ui_print "  ╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╰╯ "
ui_print ""
ui_print "- Model : $(getprop ro.product.model) "
ui_print ""
MODEXTRACT
ui_print ""
ui_print "• (Volume + Next) × (Volume - Install) "
ui_print ""
ui_print "- NOTE -"
ui_print "• Unlock game graphic and fps such as Call of Duty Mobile and PUBG etc"
ui_print "• Not Working if You're using MagiskHide Props."
ui_print "• Or others similar Modules with it."
ui_print "• Not Work for All Games, causing SafetyNet fail."
ui_print "• Need Xposed module to fix or bypass SafetyNet."
ui_print "• It may break some system Apps,"
ui_print "• such as Miui Camera, Package Installer and etc."
ui_print ""
ui_print "- Unlockers -"
ui_print ""
ui_print " 1. PUBG Mobile, BGMI • 90Fps "
ui_print " 2. PUBG : New State • Doesn't change device model "
ui_print " 3. COD Mobile and BlackDesert Mobile "
ui_print " 4. Mobile Legends "
ui_print " 5. League of Legends • 120Fps "
ui_print " 6. COD Mobile • 120Fps "
ui_print " 7. Fortnite • Doesn't change device model "
ui_print " 8. Asphalt and PUBG Mobile, BGMI • 90Fps "
ui_print " 9. Cancel "
ui_print ""
ui_print "- Select Unlocker: "
ui_print ""
MODADDON
ui_print ""
ui_print "- MODE: $FCTEXT "
ui_print ""
MODSET
MODPERM
}
MODEXTRACT() {
ui_print "- Extracting module files"
unzip -o "$ZIPFILE" module.prop -d $MODPATH >&2
unzip -o "$ZIPFILE" system.prop -d $MODPATH >&2
unzip -o "$ZIPFILE" post-fs-data.sh -d $MODPATH >&2
unzip -o "$ZIPFILE" 'addon/*' -d $MODPATH >&2
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
. $MODPATH/addon/Volume-Key-Selector/install.sh
RM_RF
}
MODPERM() {
set_perm_recursive $MODPATH 0 0 0755 0644
}
MODADDON() {
while true; do
	ui_print "  $UM"
	if $VKSEL; then
		UM=$((UM + 1))
	else 
		break
	fi
	if [ $UM -gt 9 ]; then
		UM=1
	fi
done
ui_print "- Selected Unlocker: $UM "
case $UM in
 1 ) TEXT3="✓PUBGM, BGMI | 90FPS "; FCTEXT="PUBG Mobile, BGMI • 90Fps"; sed -i '/ro.product.model/s/.*/ro.product.model=M2102K1C/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=M2102K1C/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=M2102K1C/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=M2102K1C/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=M2102K1C/' $MODPATH/system.prop;;
 2 ) TEXT3="✓PUBG : NS "; FCTEXT="PUBG: New State"; chmod 0777 /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini; magiskhide enable; magiskhide add com.pubg.newstate; settings put global adb_enabled 0 settings put global development_settings_enabled 0; mv /data/media/0/TWRP /data/media/0/PRWT; mv /data/media/0/Download/magisk_patched.img /data/media/0/Download/ksigam_dehctap.img; am force-stop com.pubg.newstate; sed -i -e 's/FrameRateLimit=30.000000/FrameRateLimit=90.000000/g' /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/FrameRateLimit=30.000000/FrameRateLimit=90.000000/g' /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/FrameRateLimit=60.000000/FrameRateLimit=90.000000/g' /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/FrameRateLimit=60.000000/FrameRateLimit=90.000000/g' /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/AudioQualityLevel=2/AudioQualityLevel=0/g' /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/AudioQualityLevel=1/AudioQualityLevel=0/g' /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/LastConfirmedAudioQualityLevel=2/LastConfirmedAudioQualityLevel=0/g' /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/LastConfirmedAudioQualityLevel=1/LastConfirmedAudioQualityLevel=0/g' /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini;;
 3 ) TEXT3="✓CODM And BDM "; FCTEXT="COD Mobile And BD Mobile"; sed -i '/ro.product.model/s/.*/ro.product.model=SM-G965F/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=SM-G965F/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=SM-G965F/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=SM-G965F/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=SM-G965F/' $MODPATH/system.prop;;
 4 ) TEXT3="✓ML "; FCTEXT="Mobile Legends"; sed -i '/ro.product.model/s/.*/ro.product.model=Mi 10 Pro/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=Mi 10 Pro/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=Mi 10 Pro/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=Mi 10 Pro/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=Mi 10 Pro/' $MODPATH/system.prop;;
 5 ) TEXT3="✓LOL | 120FPS "; FCTEXT="League of Legends • 120Fps"; sed -i '/ro.product.model/s/.*/ro.product.model=SM-G9880/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=SM-G9880/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=SM-G9880/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=SM-G9880/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=SM-G9880/' $MODPATH/system.prop;;
 6 ) TEXT3="✓CODM | 120FPS "; FCTEXT="COD Mobile • 120Fps"; sed -i '/ro.product.model/s/.*/ro.product.model=SO-52A/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=SO-52A/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=SO-52A/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=SO-52A/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=SO-52A/' $MODPATH/system.prop;;
 7 ) TEXT3="✓FORTNITE "; FCTEXT="Fortnite"; chmod 0777 /data/data/com.epicgames.fortnite/files/UE4Game/FortniteGame/FortniteGame/Saved/Config/Android/GameUserSettings.ini; magiskhide enable; magiskhide add com.epicgames.fortnite; settings put global adb_enabled 0; mv /data/media/0/TWRP /data/media/0/PRWT; mv /data/media/0/Download/magisk_patched.img /data/media/0/Download/ksigam_dehctap.img; am force-stop com.epicgames.fortnite; sed -i -e 's/MobileFPSMode=Mode_20Fps/MobileFPSMode=Mode_60Fps/g' /data/data/com.epicgames.fortnite/files/UE4Game/FortniteGame/FortniteGame/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/MobileFPSMode=Mode_30Fps/MobileFPSMode=Mode_60Fps/g'  /data/data/com.epicgames.fortnite/files/UE4Game/FortniteGame/FortniteGame/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/MobileFPSMode=Mode_45Fps/MobileFPSMode=Mode_60Fps/g'  /data/data/com.epicgames.fortnite/files/UE4Game/FortniteGame/FortniteGame/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/MobileFPSMode=Mode_60Fps/MobileFPSMode=Mode_60Fps/g'  /data/data/com.epicgames.fortnite/files/UE4Game/FortniteGame/FortniteGame/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/MobileFPSMode=Mode_120Fps/MobileFPSMode=Mode_60Fps/g'  /data/data/com.epicgames.fortnite/files/UE4Game/FortniteGame/FortniteGame/Saved/Config/Android/GameUserSettings.ini;;
 8 ) TEXT3="✓ASPHALT AND PUBGM, BGMI | 90FPS"; FCTEXT="Asphalt and PUBG Mobile, BGMI • 90Fps"; sed -i '/ro.product.model/s/.*/ro.product.model=GM1917/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=GM1917/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=GM1917/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=GM1917/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=GM1917/' $MODPATH/system.prop;;
 9 ) FCTEXT="Cancelled"; abort;;
esac
}
MODSET() {
sed -i "/description=/c description=${TEXT1}${TEXT2}${TEXT3}" $MODPATH/module.prop;
}
if [ ! "$SKIPUNZIP" = "0" ] ; then
    set -x
    MODPRINT
else
    set +x
    abort
fi
