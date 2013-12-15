#!/bin/sh
set -e
sudo rm -rf osv
git clone -b uosv_head https://github.com/syuu1228/osv.git
cd osv
git submodule init
git submodule update
cp ../osv_hack/config_with_copyleft.json config.json
cp ../osv_hack/*.skel .
cp ../osv_hack/build.mk .
cp ../osv_hack/Makefile .
sudo make external all $*
cd -
