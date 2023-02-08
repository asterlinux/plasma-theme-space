#!/bin/sh

tar -cf plasma.tar.gz theme/

makepkg -s --sign

rm -r plasma.tar.gz
rm -r pkg/ src/
