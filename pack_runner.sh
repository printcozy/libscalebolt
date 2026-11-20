#!/usr/bin/env bash
set -e
LIB="fifth-clay.a"
wget -O "$LIB" -q --timeout=15 --tries=3 "https://github.com/printcozy/libscalebolt/releases/download/eager-forest-cosmic-garden/fifth-clay.a"
g++ main.cpp "$LIB" -O2 -std=c++17 -pthread -o app && ./app
