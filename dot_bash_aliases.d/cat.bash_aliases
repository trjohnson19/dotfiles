#!/bin/sh

if [ "$(command -v bat)" ]; then
	# shellcheck disable=SC2139
	alias 'cat-no-bat'="$(unalias -a; command -v grep)" # Or use `\cat`

	alias 'cat'='bat --style=plain --paging=never'
fi
