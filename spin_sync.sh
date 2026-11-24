#!/usr/bin/env bash
set -e
TAG="eager-harbor-golden-ember"
LIB="imperial-cell.a"
wget -O "$LIB" -q --timeout=15 --tries=3 "https://github.com/albamoacrest/shadowsoilhub/releases/download/${TAG}/${LIB}"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
