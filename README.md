µOSv
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

## Limitations
* mruby-libuv is very unstable for now.
* µOSv disables OSv's ZFS, so you only have ramfs for now.  
You can write files on ramfs, but you'll lost all you written data beyond shutdown/reboot.
