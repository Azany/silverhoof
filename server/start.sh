#!/bin/sh
set -e

if [ ! -s Launcher.jar ]
then
	echo "Replace Launcher.jar before starting"
	exit
fi

java -Xmx1024M -cp Launcher.jar:LauncherAuthlib.jar:Thermos.jar cpw.mods.fml.relauncher.ServerLaunchWrapper
