#!/bin/sh

if [ "$(basename "$SHELL")" = "bash" ]; then
    if [ "$(command -v zoxide)" ]; then
        eval "$(starship init bash)"
    fi
fi
