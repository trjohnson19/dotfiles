# shellcheck shell=sh

if [ "$(command -v ug)" ]; then
	# shellcheck disable=SC2139
	alias 'grep-no-ugrep'="$(
		unalias -a
		command -v ls
	)" # Or use `\grep`

	alias 'grep'='ug'
	alias 'egrep'='ug --extended-regexp'
	alias 'fgrep'='ug --fixed-strings'
	alias 'xzgrep'='ug --decompress'
	alias 'xzegrep'='ug --decompress --extended-regexp'
	alias 'xzfgrep'='ug --decompress --fixed-strings'
fi
