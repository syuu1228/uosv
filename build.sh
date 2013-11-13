#!/bin/sh
rm -rf libuv
git clone https://github.com/joyent/libuv.git
git checkout v0.11.8
cd libuv
./gyp_uv.py -f make
make -C out
sudo cp out/Debug/libuv.a /usr/lib
sudo cp include/uv* /usr/include
cd -
sudo rm -rf osv
git clone https://github.com/cloudius-systems/osv.git
cd osv
git checkout module
git submodule update --init
cp ../config.json .
cp ../*.skel .
cp ../build.mk .
sudo make external all
cd -
