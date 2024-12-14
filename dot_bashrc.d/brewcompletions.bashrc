#!/bin/bash
# https://docs.brew.sh/Shell-Completion
if type brew &>/dev/null; then
	HOMEBREW_PREFIX="$(brew --prefix)"
	if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
		# shellcheck source=/dev/null
		source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
	else
		# shellcheck source=/dev/null
		for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
			[[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
		done
	fi
fi
