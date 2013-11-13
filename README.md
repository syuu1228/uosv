µOSv
====

µOSv is lightweight edition of OSv, which uses mruby interpreter instead of Java VM for its system language.

## Supported HostOS
Ubuntu 13.10/x86_64

## Building

There are prerequisite packages before start building.

**Ubuntu**
```
sudo apt-get install openjdk-7-jdk autotools-dev libltdl-dev libtool autoconf autopoint libboost-all-dev \
genromfs zfs-fuse autoconf ant libffi-dev ruby bison gyp
```

To start building, execute following command:
```
./build.sh
```

## Running µOSv

To run µOSv, execute following command:
```
./run.sh
```

## Updating µOSv filesystem

Add files under userdata, update userdata/Makefile, then
```
./update.sh
```
