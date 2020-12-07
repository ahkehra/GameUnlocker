TEXT1="GAME乛Unlocker Unlock Max Game Graphic And FPS In $(getprop ro.product.system.brand) Devices. "
TEXT2="𝗨𝗻𝗹𝗼𝗰𝗸𝗲𝗿 𝗠𝗼𝗱𝗲: "
ui_print ""
ui_print "**************************************"
ui_print ""
ui_print " ╭━━━╮╱╱╱╱╱╱╱╱╱╭╮╱╭╮╱╱╭╮╱╱╱╱╱╱╭╮"
ui_print " ┃╭━╮┃╱╱╱╱╱╱╱╱╱┃┃╱┃┃╱╱┃┃╱╱╱╱╱╱┃┃"
ui_print " ┃┃╱╰╋━━┳╮╭┳━━╮┃┃╱┃┣━╮┃┃╭━━┳━━┫┃╭┳━━┳━╮"
ui_print " ┃┃╭━┫╭╮┃╰╯┃┃━┫┃┃╱┃┃╭╮┫┃┃╭╮┃╭━┫╰╯┫┃━┫╭╯"
ui_print " ┃╰┻━┃╭╮┃┃┃┃┃━┫┃╰━╯┃┃┃┃╰┫╰╯┃╰━┫╭╮┫┃━┫┃"
ui_print " ╰━━━┻╯╰┻┻┻┻━━╯╰━━━┻╯╰┻━┻━━┻━━┻╯╰┻━━┻╯"
ui_print ""
ui_print "**************************************"
ui_print ""
ui_print "- By: AkiraSuper "
ui_print "- Status: vFINAL | $(grep_prop versionCode $MODPATH/module.prop) "
ui_print "- Device Model: $(getprop ro.product.model) "
ui_print ""
ui_print "**************************************"
ui_print ""
sleep 0.2
ui_print "- 🎮 Starting GAME乛Unlocker Installation 🔓 -"
ui_print ""
sleep 0.2
ui_print " (Volume + Next) × (Volume - Install) "
ui_print ""
sleep 0.2
ui_print "**************************************"
ui_print ""
ui_print "- NOTE -"
ui_print " Unlock game graphic and fps such as Call of Duty Mobile,"
ui_print " PUBG, Asphalt, Blade&Soul Revolution,"
ui_print " Mobile Legends, Black Desert Mobile, Arena Of Valor"
ui_print " Not Working if You're using MagiskHide Props."
ui_print " Or others similar Modules with it."
ui_print " Not Work for All Games, causing SafetyNet fail."
ui_print " Need Xposed module to fix or bypass SafetyNet."
ui_print " It may break some system Apps,"
ui_print " such as Miui Camera, Package Installer and etc."
ui_print ""
ui_print "**************************************"
ui_print ""
sleep 0.5
ui_print "- GAME乛Unlocker -"
ui_print ""
sleep 0.2
ui_print " 1. PUBG Mobile 90FPS Settings And Dead Trigger 2 - Max Settings "
sleep 0.2
ui_print " 2. COD Mobile And Asphalt 9 Legends - Max Settings "
sleep 0.2
ui_print " 3. COD Mobile - 120FPS Settings "
sleep 0.2
ui_print " 4. Mobile Legends And League Of Legends - Max Settings "
sleep 0.2
ui_print " 5. Black Desert Mobile - Max Settings "
sleep 0.2
ui_print " 6. Arena Of Valor - Max Settings "
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
 1 ) TEXT3="✓PUBGM And DT2 "; FCTEXT="PUBG Mobile And Dead Trigger 2"; sed -i '/ro.product.model/s/.*/ro.product.model=IN2020/' $MODPATH/system.prop; sed -i '/ro.product.manufacturer/s/.*/ro.product.manufacturer=OnePlus/' $MODPATH/system.prop;;
 2 ) TEXT3="✓CODM And A9L "; FCTEXT="COD Mobile And Asphalt 9 Legends"; sed -i '/ro.product.model/s/.*/ro.product.model=SM-G965F/' $MODPATH/system.prop; sed -i '/ro.product.manufacturer/s/.*/ro.product.manufacturer=Samsung/' $MODPATH/system.prop;;
 3 ) TEXT3="✓CODM "; FCTEXT="COD Mobile"; sed -i '/ro.product.model/s/.*/ro.product.model=SO-52A/' $MODPATH/system.prop; sed -i '/ro.product.manufacturer/s/.*/ro.product.manufacturer=Sony/' $MODPATH/system.prop;;
 4 ) TEXT3="✓ML And LOL "; FCTEXT="Mobile Legends And League Of Legends"; sed -i '/ro.product.model/s/.*/ro.product.model=A2218/' $MODPATH/system.prop; sed -i '/ro.product.manufacturer/s/.*/ro.product.manufacturer=Apple/' $MODPATH/system.prop;;
 5 ) TEXT3="✓BDM "; FCTEXT="Black Desert Mobile"; sed -i '/ro.product.model/s/.*/ro.product.model=SM-G975U/' $MODPATH/system.prop; sed -i '/ro.product.manufacturer/s/.*/ro.product.manufacturer=Samsung/' $MODPATH/system.prop;;
 6 ) TEXT3="✓AOV "; FCTEXT="Arena Of Valor"; sed -i '/ro.product.model/s/.*/ro.product.model=R11 Plus/' $MODPATH/system.prop; sed -i '/ro.product.manufacturer/s/.*/ro.product.manufacturer=Oppo/' $MODPATH/system.prop;;
esac
ui_print ""
ui_print "- GAME乛Unlocker Mode: $FCTEXT "
ui_print ""
sleep 0.5
ui_print "**************************************"
ui_print ""
sed -i "/description=/c description=${TEXT1}${TEXT2}${TEXT3}" $MODPATH/module.prop;
sleep 1