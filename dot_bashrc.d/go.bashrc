# shellcheck shell=sh
# shellcheck disable=SC2034 # Exporting to the shell

if [ "$(command -v go)" ]; then
	GOPATH="$(command -v go)"
fi
