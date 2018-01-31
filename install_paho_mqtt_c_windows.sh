#!/bin/bash
#
# Installs the matching version of Paho MQTT C library required by the C++ lib.
#

git clone https://github.com/eclipse/paho.mqtt.c.git
#git checkout develop
cd paho.mqtt.c && mkdir build.windows.x64 && cd build.windows.x64
cmake -G "Visual Studio 15 2017 Win64" -DBUILD_STATIC_LIBS=TRUE -DBUILD_SHARED_LIBRARIES=FALSE ..
cd .. && mkdir build.windows.x86 && cd build.windows.x86
cmake -G "Visual Studio 15 2017" -DBUILD_STATIC_LIBS=TRUE -DBUILD_SHARED_LIBRARIES=FALSE ..

exit 0


