#!/bin/bash

(git clone https://github.com/immortalwrt/immortalwrt.git openwrt) || (cd openwrt && git stash && git pull)

cd openwrt

echo "src-git xiaorouji2 https://github.com/xiaorouji/openwrt-passwall2.git;main" >> feeds.conf.default
#echo "src-git small8 https://github.com/kenzok8/small-package.git;main" >> feeds.conf.default

./scripts/feeds update -a
./scripts/feeds install -a
