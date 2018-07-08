#!/bin/bash

# select a random word from system dictionary

# DICT=$( sed -n "/^.\{${1}\}$/p" $ROOT/usr/share/dict/words)

LENGTH=$(sed -n "/^.\{${1}\}$/p" $ROOT/usr/share/dict/words | wc -l)
# LENGTH=$(echo $DICT | wc -w)
RAND=$((($RANDOM * $RANDOM) % $LENGTH))

sed -n "/^.\{${1}\}$/p" $ROOT/usr/share/dict/words | sed -n "${RAND}p"
