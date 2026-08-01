#!/bin/sh

if [ "$(command -v ug)" ]; then
    # shellcheck disable=SC2139
    alias grep-no-ugrep="$(which grep)"
    alias grep='ug'
    alias egrep='ug --extended-regexp'
    alias fgrep='ug --fixed-strings'
    alias xzgrep='ug --decompress'
    alias xzegrep='ug --decompress --extended-regexp'
    alias xzfgrep='ug --decompress --fixed-strings'
fi
