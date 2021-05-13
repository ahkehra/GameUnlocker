GAMEUSERSETTINGS_FILE=/data/data/com.epicgames.fortnite/files/UE4Game/FortniteGame/FortniteGame/Saved/Config/Android/GameUserSettings.ini
TEXT1="GameUnlocker Unlock Max Game Graphic And FPS In $(getprop ro.product.system.brand) Devices. "
TEXT2="𝗨𝗻𝗹𝗼𝗰𝗸𝗲𝗿 𝗠𝗼𝗱𝗲: "
cat << "EOF"
    ____     __       __                ___          
   / __/__  / /__    / /  ___ _  _____ / (_)__  ___ _
  _\ \/ _ \/ / _ \  / /__/ -_) |/ / -_) / / _ \/ _ `/
 /___/\___/_/\___/ /____/\__/|___/\__/_/_/_//_/\_, / 
                                              /___/ 
EOF
sleep 0.5
ui_print "- Model : $(getprop ro.product.model) "
ui_print ""
sleep 0.5
ui_print " (Volume + Next) × (Volume - Install) "
ui_print ""
sleep 0.5
ui_print "- NOTE -"
ui_print " Unlock game graphic and fps such as Call of Duty Mobile,"
ui_print " PUBG, Asphalt, Blade&Soul Revolution,"
ui_print " Mobile Legends, Black Desert Mobile, Arena Of Valor etc"
ui_print " Not Working if You're using MagiskHide Props."
ui_print " Or others similar Modules with it."
ui_print " Not Work for All Games, causing SafetyNet fail."
ui_print " Need Xposed module to fix or bypass SafetyNet."
ui_print " It may break some system Apps,"
ui_print " such as Miui Camera, Package Installer and etc."
ui_print ""
sleep 0.5
ui_print "- Unlockers -"
ui_print ""
sleep 0.2
ui_print " 1. PUBG Mobile and Dead Trigger 2 "
sleep 0.2
ui_print " 2. Asphalt, COD Mobile And BlackDesert Mobile "
sleep 0.2
ui_print " 3. Mobile Legends And League Of Legends "
sleep 0.2
ui_print " 4. Arena Of Valor - Max Settings "
sleep 0.2
ui_print " 5. COD Mobile - 120FPS "
sleep 0.2
ui_print " 6. Fortnite - Doesn't change device model "
ui_print ""
sleep 0.2
ui_print " Select Unlocker: "
GU=1
while true; do
	ui_print "  $GU"
	if $VKSEL; then
		GU=$((GU + 1))
	else 
		break
	fi
	if [ $GU -gt 6 ]; then
		GU=1
	fi
done
ui_print " Selected Unlocker: $GU "
#
case $GU in
 1 ) TEXT3="✓PUBGM And DT2 "; FCTEXT="PUBG Mobile And Dead Trigger 2"; sed -i '/ro.product.model/s/.*/ro.product.model=GM1917/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=GM1917/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=GM1917/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=GM1917/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=GM1917/' $MODPATH/system.prop;;
 2 ) TEXT3="✓Asphalt, CODM And BDM "; FCTEXT="Asphalt, COD Mobile And BD Mobile"; sed -i '/ro.product.model/s/.*/ro.product.model=SM-G965F/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=SM-G965F/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=SM-G965F/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=SM-G965F/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=SM-G965F/' $MODPATH/system.prop;;
 3 ) TEXT3="✓ML And LOL "; FCTEXT="Mobile Legends And League Of Legends"; sed -i '/ro.product.model/s/.*/ro.product.model=Mi 10 Pro/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=Mi 10 Pro/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=Mi 10 Pro/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=Mi 10 Pro/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=Mi 10 Pro/' $MODPATH/system.prop;;
 4 ) TEXT3="✓AOV "; FCTEXT="Arena Of Valor"; sed -i '/ro.product.model/s/.*/ro.product.model=R11 Plus/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=R11 Plus/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=R11 Plus/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=R11 Plus/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=R11 Plus/' $MODPATH/system.prop;;
 5 ) TEXT3="✓CODM "; FCTEXT="COD Mobile"; sed -i '/ro.product.model/s/.*/ro.product.model=SO-52A/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=SO-52A/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=SO-52A/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=SO-52A/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=SO-52A/' $MODPATH/system.prop;;
 6 ) TEXT3="✓FORTNITE "; FCTEXT="Fortnite"; chmod 0777 $GAMEUSERSETTINGS_FILE; magiskhide enable; magiskhide add com.epicgames.fortnite; settings put global adb_enabled 0; mv /data/media/0/TWRP /data/media/0/PRWT; mv /data/media/0/Download/magisk_patched.img /data/media/0/Download/ksigam_dehctap.img; am force-stop com.epicgames.fortnite; sed -i -e 's/MobileFPSMode=Mode_20Fps/MobileFPSMode=Mode_60Fps/g' $GAMEUSERSETTINGS_FILE; sed -i -e 's/MobileFPSMode=Mode_30Fps/MobileFPSMode=Mode_60Fps/g'  $GAMEUSERSETTINGS_FILE; sed -i -e 's/MobileFPSMode=Mode_45Fps/MobileFPSMode=Mode_60Fps/g'  $GAMEUSERSETTINGS_FILE; sed -i -e 's/MobileFPSMode=Mode_60Fps/MobileFPSMode=Mode_60Fps/g'  $GAMEUSERSETTINGS_FILE; sed -i -e 's/MobileFPSMode=Mode_120Fps/MobileFPSMode=Mode_60Fps/g'  $GAMEUSERSETTINGS_FILE;;
esac
ui_print ""
ui_print "- MODE: $FCTEXT "
ui_print ""
sed -i "/description=/c description=${TEXT1}${TEXT2}${TEXT3}" $MODPATH/module.prop;
