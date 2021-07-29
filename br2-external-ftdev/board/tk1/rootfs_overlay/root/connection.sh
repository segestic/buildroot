#!/bin/bash
#Author: Dogukan GULYASAR

if [ $1 == 'connect' ]
then
	echo '############################## Connection process started'
	connmanctl enable wifi
	dbus-send --system --dest=net.connman --print-reply /
	net.connman.Manager.RegisterAgent objpath:"/test/agent"
	connmanctl scan wifi
	connmanctl connect wifi_0013eff3084c_47554e53454c5f5445414d_managed_psk
	echo '############################## Connection process ended'	
elif [ $1 == 'disconnect' ]
then
	echo '############################## Disconnection process started'
	connmanctl disconnect wifi_0013eff3084c_47554e53454c5f5445414d_managed_psk
	echo '############################## Disconnection process ended'
fi
