#!/bin/sh
rm -rf libuv
git clone https://github.com/joyent/libuv.git
cd libuv
./gyp_uv.py -f make
make -C out
sudo cp out/Debug/libuv.a /usr/lib
sudo cp include/uv* /usr/include
cd -
rm -rf osv
git clone https://github.com/syuu1228/osv.git
cd osv
git checkout module
git submodule update --init
cp ../config.json .
cp ../*.skel .
sudo make external all
cd -
