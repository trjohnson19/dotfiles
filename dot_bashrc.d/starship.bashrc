# shellcheck shell=sh

shell=$(basename "$(readlink /proc/$$/exe)" 2>/dev/null || basename "${SHELL}")

if [ "${shell}" = "bash" ]; then
	if [ "$(command -v zoxide)" ]; then
		eval "$(starship init bash)"
	fi
fi
