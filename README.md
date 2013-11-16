µOSv [![Build Status](https://travis-ci.org/syuu1228/uosv.png?branch=master)](https://travis-ci.org/syuu1228/uosv)
====

µOSv is lightweight edition of OSv, which uses mruby interpreter instead of Java VM for its system language.  
Here's a movie how µOSv looks like: http://www.youtube.com/watch?v=hSK_VZkwmxI

## What's this?

It's cloud OS which specialized for running mruby script, works on both KVM and Xen, and some IaaS/VPS services.  
Able to run very few memory amount(>90MB for now), very small disk image size(26MB for now), very fast boot-up speed(less than 2sec).  
Original OSv is great OS to run Java application, but it's too huge in some usecases.
µOSv offers much smaller / simpler enviroment for developers who loves scripting language.

## Tested HostOS
KVM on Ubuntu 13.10/x86_64

## Building

There are prerequisite packages before start building.

**Ubuntu**
```
sudo apt-get install openjdk-7-jdk autotools-dev libltdl-dev libtool autoconf autopoint libboost-all-dev \
genromfs zfs-fuse autoconf ant libffi-dev ruby bison gyp git build-essential qemu-utils qemu-system-x86 \
bridge-utils libvirt0 libvirt-bin

wget https://launchpad.net/ubuntu/+archive/primary/+files/libuv-dev_0.10.18-1_amd64.deb
wget https://launchpad.net/ubuntu/+archive/primary/+files/libuv0.10-dbg_0.10.18-1_amd64.deb
wget https://launchpad.net/ubuntu/+archive/primary/+files/libuv0.10_0.10.18-1_amd64.deb
sudo dpkg -i libuv*.deb
```

To start building, execute following command:
```
git clone https://github.com/syuu1228/uosv.git
cd uosv
./build.sh
```

## Running µOSv

To run µOSv, execute following command:
```
./run.sh
```

You also can specify VM memory size like this:
```
./run.sh 90m
```


## Updating µOSv filesystem

Add files under userdata/, then execute following command:
```
./update.sh
```

## License

OSv related products are almost under BSDL.   
mruby related products are almost under MIT.  
mruby-polarssl and mruby-sha1 are under GPL/LGPL.  
mruby-vedis is under Sleepycat License.  

|Product|Dependencies|License |
|------ |----------- |------- |
|OSv|FreeBSD, ZFS, Prex, Musl|BSDL|
|FreeBSD| |BSDL|
|ZFS| |CDDL|
|Prex| |MIT|
|Musl| |MIT, BSDL|
|mruby| |MIT|
|mruby-dir| |MIT|
|mruby-env| |MIT|
|mruby-errno| |MIT|
|mruby-ipaddr| |MIT|
|mruby-mock| |MIT|
|mruby-mtest| |MIT|
|mruby-pack| |MIT|
|mruby-process| |MIT|
|mruby-regexp-pcre| |MIT|
|mruby-require| |MIT|
|mruby-simple-random| |MIT|
|mruby-socket| |MIT|
|mruby-tempfile| |MIT|
|mruby-msgpack| |MIT|
|mruby-uv|libuv|MIT|
|libuv| |MIT|
|mruby-http|mruby-uv|MIT|
|mruby-json| |MIT|
|mruby-msgpack-rpc|mruby-socket,mruby-msgpack|MIT|
|mruby-polarssl|PolarSSL|LGPLv3|
|PolarSSL| |GPL/Commercial(Dual)| 
|mruby-yaml|libyaml|MIT|
|libyaml| |MIT|
|mruby-base64| |MIT|
|mruby-sha1| |GPL|
|mruby-md5| |MIT|
|mruby-vedis| |Sleepycat License|
|mruby-sleep| |MIT|
|mruby-simplehttp| |MIT|
|mruby-httprequest| |MIT|
|mruby-aws-s3|mruby-uv, mruby-http, mruby-digest, mruby-pack, mruby-simplehttp, mruby-httprequest|MIT|
|mruby-cfunc|libffi|MIT|
|libffi|mruby-cfunc|MIT|

## Limitations
* libuv is ported, but very unstable for now.
* µOSv disables OSv's ZFS, so you only have ramfs for now.  
You can write files on ramfs, but you'll lost all you written data beyond shutdown/reboot.
