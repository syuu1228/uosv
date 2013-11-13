#!/bin/sh
cd osv/
sudo ./scripts/run.py -n -v -i build/release/loader.img -e "--nomount mruby.so shell.rb"
