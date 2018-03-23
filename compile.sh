#!/bin/sh
export PATH=/Users/thomasleiter/android-toolchain/bin/:$PATH
export CC=arm-linux-androideabi-gcc

$CC -fPIE -pie -llog "./src/entrypoint.c" -o "dist/test"

adb push "dist/test" /data/local/tmp
adb shell /data/local/tmp/test