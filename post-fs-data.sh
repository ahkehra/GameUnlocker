#!/system/bin/sh
MODULE=/data/adb/modules
# Conflict module remover
for REMOVE in $MODULE/*Game_Unlock*; do
    touch $REMOVE/disable;
done;
for REMOVE in $MODULE/*Pubg_extrem*; do
    touch $REMOVE/disable;
done;
for REMOVE in $MODULE/*pixel*; do
    touch $REMOVE/disable;
done;
for REMOVE in $MODULE/*Pixel*; do
    touch $REMOVE/disable;
done;
for REMOVE in $MODULE/*PIXEL*; do
    touch $REMOVE/disable;
done;
for REMOVE in $MODULE/*spoof*; do
    touch $REMOVE/disable;
done;
for REMOVE in $MODULE/*SPOOF*; do
    touch $REMOVE/disable;
done;
for REMOVE in $MODULE/*Spoof*; do
    touch $REMOVE/disable;
done
