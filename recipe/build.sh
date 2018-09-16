#!/bin/bash

chmod +x configure

if [ "$(uname)" == "Darwin" ];
then
    ./configure --prefix=$PREFIX --enable-cxx --build=x86_64-apple-darwin
else
    ./configure --prefix=$PREFIX --enable-cxx --enable-fat
fi

make
make check
make install
