#!/bin/bash
set -e

echo "[BUILD] Build WebUI Zashboard"
cd zashboard
npm install
npm run build
cd ..

echo "[COPY] Salin hasil build ke ClashMetaForAndroid"
mkdir -p ClashMetaForAndroid/app/src/main/assets/dashboard
rm -rf ClashMetaForAndroid/app/src/main/assets/dashboard/*
cp -r zashboard/dist/* ClashMetaForAndroid/app/src/main/assets/dashboard/
