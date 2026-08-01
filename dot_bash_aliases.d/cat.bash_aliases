#!/bin/sh

if [ "$(command -v bat)" ]; then
    # shellcheck disable=SC2139
    alias cat-no-bat="$(which cat)"
    alias cat='bat --style=plain --paging=never'
fi
