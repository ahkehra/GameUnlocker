rMOD=1
SKIPUNZIP=1
TEXT1="Unlock Max Game Graphics/FPS Mode In $(getprop ro.product.system.brand) Device. "
TEXT2="SPOOF GAME: "
rRM() {
rm -rf $MODPATH/LICENSE 2>/dev/null
rm -rf $MODPATH/README.md 2>/dev/null
rm -rf $MODPATH/addon 2>/dev/null
}
rPRINT() {
ui_print ""
ui_print "    ___   __ _________  ___  "
ui_print "   / _ | / //_/ __/ _ \/ _ | "
ui_print "  / __ |/ ,< / _// , _/ __ | "
ui_print " /_/ |_/_/|_/___/_/|_/_/ |_| "
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
rEXT
ui_print "- Model : $(getprop ro.product.model) "
ui_print ""
ui_print "• (Volume + Next) × (Volume - Install) "
ui_print ""
ui_print "- Games -"
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
ui_print "- Select Game: "
ui_print ""
rADDON
ui_print ""
ui_print "- MODE: $FCTEXT "
ui_print ""
rMSET
rPERM
}
rEXT() {
ui_print "- Extracting module files"
unzip -o "$ZIPFILE" post-fs-data.sh -d $MODPATH >&2
unzip -o "$ZIPFILE" 'addon/*' -d $MODPATH >&2
. $MODPATH/addon/Volume-Key-Selector/install.sh
}
rPERM() {
set_perm_recursive $MODPATH 0 0 0755 0644
}
rADDON() {
while true; do
	ui_print "  $rMOD"
	if $VKSEL; then
		rMOD=$((rMOD + 1))
	else 
		break
	fi
	if [ $rMOD -gt 9 ]; then
		rMOD=1
	fi
done
ui_print "- Selected Game: $rMOD "
case $rMOD in
 1 ) TEXT3="✓PUBGM, BGMI | 90FPS "; FCTEXT="PUBG Mobile, BGMI • 90Fps"; echo "ro.product.model=M2102K1C" >> $MODPATH/system.prop; echo "ro.product.odm.model=M2102K1C" >> $MODPATH/system.prop; echo "ro.product.system.model=M2102K1C" >> $MODPATH/system.prop; echo "ro.product.vendor.model=M2102K1C" >> $MODPATH/system.prop; echo "ro.product.system_ext.model=M2102K1C" >> $MODPATH/system.prop;
 2 ) TEXT3="✓PUBG : NS "; FCTEXT="PUBG: New State"; chmod 0777 /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini; magiskhide enable; magiskhide add com.pubg.newstate; settings put global adb_enabled 0 settings put global development_settings_enabled 0 magisk --denylist rm com.google.android.gms; mv /data/media/0/TWRP /data/media/0/PRWT; mv /data/media/0/Download/magisk_patched.img /data/media/0/Download/ksigam_dehctap.img; am force-stop com.pubg.newstate; sed -i -e 's/InGameSetting=*/InGameSetting=(Brightness=135.000000,3e5fb0f167=HD,CameraFOV_FPP=95.000000,ee1cce4781=ULTRA,0e36c7ab25=ULTRA,52acd236cf=EXTREME90,30db48eba4=ULTRA,388652a957=OFF,CameraFOV_TPP=80.000000,d08a7d9304=ULTRA,AntiAliasingType=ON,d67592353d=ULTRA,728fe36b3e=ULTRA)/g' /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/FrameRateLimit=30.000000/FrameRateLimit=90.000000/g' /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/FrameRateLimit=30.000000/FrameRateLimit=90.000000/g' /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/FrameRateLimit=60.000000/FrameRateLimit=90.000000/g' /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/FrameRateLimit=60.000000/FrameRateLimit=90.000000/g' /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/AudioQualityLevel=2/AudioQualityLevel=0/g' /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/AudioQualityLevel=1/AudioQualityLevel=0/g' /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/LastConfirmedAudioQualityLevel=2/LastConfirmedAudioQualityLevel=0/g' /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/LastConfirmedAudioQualityLevel=1/LastConfirmedAudioQualityLevel=0/g' /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini; chmod 0440 /data/data/com.pubg.newstate/files/UE4Game/Extreme/Extreme/Saved/Config/Android/GameUserSettings.ini;
 3 ) TEXT3="✓CODM And BDM "; FCTEXT="COD Mobile And BD Mobile"; echo "ro.product.model=SM-G965F" >> $MODPATH/system.prop; echo "ro.product.odm.model=SM-G965F" >> $MODPATH/system.prop; echo "ro.product.system.model=SM-G965F" >> $MODPATH/system.prop; echo "ro.product.vendor.model=SM-G965F" >> $MODPATH/system.prop; echo "ro.product.system_ext.model=SM-G965F" >> $MODPATH/system.prop;
 4 ) TEXT3="✓ML "; FCTEXT="Mobile Legends"; echo "ro.product.model=Mi 10 Pro" >> $MODPATH/system.prop; echo "ro.product.odm.model=Mi 10 Pro" >> $MODPATH/system.prop; echo "ro.product.system.model=Mi 10 Pro" >> $MODPATH/system.prop; echo "ro.product.vendor.model=Mi 10 Pro" >> $MODPATH/system.prop; echo "ro.product.system_ext.model=Mi 10 Pro" >> $MODPATH/system.prop;
 5 ) TEXT3="✓LOL | 120FPS "; FCTEXT="League of Legends • 120Fps"; echo "ro.product.model=SM-G9880" >> $MODPATH/system.prop; echo "ro.product.odm.model=SM-G9880" >> $MODPATH/system.prop; echo "ro.product.system.model=SM-G9880" >> $MODPATH/system.prop; echo "ro.product.vendor.model=SM-G9880" >> $MODPATH/system.prop; echo "ro.product.system_ext.model=SM-G9880" >> $MODPATH/system.prop;
 6 ) TEXT3="✓CODM | 120FPS "; FCTEXT="COD Mobile • 120Fps"; echo "ro.product.model=SO-52A" >> $MODPATH/system.prop; echo "ro.product.odm.model=SO-52A" >> $MODPATH/system.prop; echo "ro.product.system.model=SO-52A" >> $MODPATH/system.prop; echo "ro.product.vendor.model=SO-52A" >> $MODPATH/system.prop; echo "ro.product.system_ext.model=SO-52A" >> $MODPATH/system.prop;
 7 ) TEXT3="✓FORTNITE "; FCTEXT="Fortnite"; chmod 0777 /data/data/com.epicgames.fortnite/files/UE4Game/FortniteGame/FortniteGame/Saved/Config/Android/GameUserSettings.ini; magiskhide enable; magiskhide add com.epicgames.fortnite; settings put global adb_enabled 0 magisk --denylist rm com.google.android.gms; mv /data/media/0/TWRP /data/media/0/PRWT; mv /data/media/0/Download/magisk_patched.img /data/media/0/Download/ksigam_dehctap.img; am force-stop com.epicgames.fortnite; sed -i -e 's/MobileFPSMode=Mode_20Fps/MobileFPSMode=Mode_60Fps/g' /data/data/com.epicgames.fortnite/files/UE4Game/FortniteGame/FortniteGame/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/MobileFPSMode=Mode_30Fps/MobileFPSMode=Mode_60Fps/g'  /data/data/com.epicgames.fortnite/files/UE4Game/FortniteGame/FortniteGame/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/MobileFPSMode=Mode_45Fps/MobileFPSMode=Mode_60Fps/g'  /data/data/com.epicgames.fortnite/files/UE4Game/FortniteGame/FortniteGame/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/MobileFPSMode=Mode_60Fps/MobileFPSMode=Mode_60Fps/g'  /data/data/com.epicgames.fortnite/files/UE4Game/FortniteGame/FortniteGame/Saved/Config/Android/GameUserSettings.ini; sed -i -e 's/MobileFPSMode=Mode_120Fps/MobileFPSMode=Mode_60Fps/g'  /data/data/com.epicgames.fortnite/files/UE4Game/FortniteGame/FortniteGame/Saved/Config/Android/GameUserSettings.ini; chmod 0440 /data/data/com.epicgames.fortnite/files/UE4Game/FortniteGame/FortniteGame/Saved/Config/Android/GameUserSettings.ini;
 8 ) TEXT3="✓ASPHALT AND PUBGM, BGMI | 90FPS"; FCTEXT="Asphalt and PUBG Mobile, BGMI • 90Fps"; echo "ro.product.model=GM1917" >> $MODPATH/system.prop; echo "ro.product.odm.model=GM1917" >> $MODPATH/system.prop; echo "ro.product.system.model=GM1917" >> $MODPATH/system.prop; echo "ro.product.vendor.model=GM1917" >> $MODPATH/system.prop; echo "ro.product.system_ext.model=GM1917" >> $MODPATH/system.prop;
 9 ) FCTEXT="Cancelled"; abort;
esac
}
rMSET() {
echo "id=gameunlocker
name=GameUnlocker
version=r5
versionCode=50
author=reallyakera
description=${TEXT1}${TEXT2}${TEXT3}" >> $MODPATH/module.prop;
}
if [ ! "$SKIPUNZIP" = "0" ] ; then
    set -x
    rPRINT
else
    set +x
    abort
fi
rRM
