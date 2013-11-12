#!/bin/sh
cd osv
rm -rf build/release/module/userdata
rm -f build/release/*.manifest
sudo make all
cd -
