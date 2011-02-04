#!/bin/bash

# Byte-compile all .el files in this directory and all subdirectories.

find . -name \*.el -exec emacs --batch --eval '(byte-compile-file '"\"{}\""')' \;
