#!/bin/sh

if [ "$(basename "$SHELL")" = "bash" ]; then
	if [ "$(command -v zoxide)" ]; then
		export _ZO_ECHO='1'
		eval "$(zoxide init bash)"
	fi
fi
