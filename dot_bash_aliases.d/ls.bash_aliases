# shellcheck shell=sh

if [ "$(command -v eza)" ]; then
	# shellcheck disable=SC2139
	alias 'ls-no-eza'="$(
		unalias -a
		command -v ls
	)" # Or use `\ls`

	alias 'l.'='eza --treat-dirs-as-files .*'
	alias 'l1'='eza --oneline'
	alias 'll'='eza --long --color=auto --icons=auto --hyperlink=auto ' \
		'--all --group-directories-first --header --group --smart-group'
	alias 'ls'='eza'
else
	alias 'll'='ls --long --almost-all --human-readable --color=auto ' \
		'--group-directories-first'
fi
