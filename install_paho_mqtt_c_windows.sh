#!/bin/bash
#
# Installs the matching version of Paho MQTT C library required by the C++ lib.
#

#git clone https://github.com/eclipse/paho.mqtt.c.git /d/paho.mqtt.c
#git checkout develop
mkdir build.vs2017.x64 && cd build.vs2017.x64
cmake -G "Visual Studio 15 2017 Win64" -DPAHO_WITH_SSL=OFF -DBUILD_STATIC_LIBS=TRUE -DBUILD_SHARED_LIBRARIES=FALSE ..
#cmake --build . --target ALL_BUILD --config Release
#cmake --build . --target ALL_BUILD --config Debug

cd .. && mkdir build.vs2017.x86 && cd build.vs2017.x86
cmake -G "Visual Studio 15 2017" -DPAHO_WITH_SSL=OFF -DBUILD_STATIC_LIBS=TRUE -DBUILD_SHARED_LIBRARIES=FALSE ..
#cmake --build . --target ALL_BUILD --config Release
#cmake --build . --target ALL_BUILD --config Debug

exit 0


