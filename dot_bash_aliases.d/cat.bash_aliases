# shellcheck shell=sh

if [ "$(command -v bat)" ]; then
	alias 'cat'='bat --style=plain --paging=never'
fi
