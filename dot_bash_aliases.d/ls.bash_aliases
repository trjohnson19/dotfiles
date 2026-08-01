# shellcheck shell=sh

if [ "$(command -v eza)" ]; then
	alias 'l.'='eza --treat-dirs-as-files .*'
	alias 'l1'='eza --oneline'
	alias 'll'='eza --long --color=auto --icons=auto --hyperlink=auto --all --group-directories-first --header --group --smart-group'
	alias 'ls'='eza'
else
	alias 'll'='ls --long --almost-all --human-readable --color=auto --group-directories-first'
fi
