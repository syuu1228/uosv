#!/bin/sh
cd osv
sudo rm -f build/release/bootfs.bin.d
sudo rm -rf build/release/module/userdata
sudo rm -f build/release/*.manifest
sudo make all
cd -
