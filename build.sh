#!/bin/sh
sudo rm -rf osv
git clone https://github.com/cloudius-systems/osv.git
cd osv
git checkout module
git submodule update --init
cp ../osv_hack/config.json .
cp ../osv_hack/*.skel .
cp ../osv_hack/build.mk .
cp ../osv_hack/Makefile .
sudo make external all
cd -
