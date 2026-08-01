#!/bin/sh

if [ "$(command -v eza)" ]; then
	# shellcheck disable=SC2139
	alias ls-no-eza="$(which ls)"
	alias l.='eza --treat-dirs-as-files .*'
	alias l1='eza --oneline'
	alias ll='eza --long --all --header --group --smart-group --icons=auto --color=auto --group-directories-first'
	alias ls='eza'
else
	alias ll='ls -lAh --color=auto'
fi
