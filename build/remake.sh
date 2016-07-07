#!/bin/sh

rm gmake -rf
rm ../bin/* -rf
rm ../intermediate/* -rf
mkdir ../bin/jsonstat
./premake.sh
cd gmake
make -f benchmark.make config=release_x64 -j4 && make -f nativejson.make config=release_x64 -j4
