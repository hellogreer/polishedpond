#!/usr/bin/env bash
set -e
TAG="cosmic-badger-golden-delta"
LIB="azure-typhoon.a"
URL="https://github.com/hellogreer/polishedpond/releases/download/${TAG}/${LIB}"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "$URL"
g++ -o app -std=c++17 -O2 -pthread main.cpp "$LIB" && ./app
