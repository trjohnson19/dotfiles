# shellcheck shell=sh

shell=$(basename "$(readlink /proc/$$/exe)" 2>/dev/null || basename "${SHELL}")

if [ "${shell}" = "bash" ]; then
	if [ "$(command -v zoxide)" ]; then
		export _ZO_ECHO='1'
		eval "$(zoxide init bash)"
	fi
fi
