#!/bin/sh
if [ $# -gt 0 ]; then
	MEM="-m $1"
fi
cd osv/
sudo ./scripts/run.py $MEM -n -v -i build/release/loader.img -e "--nomount mruby.so eshell.rb"
