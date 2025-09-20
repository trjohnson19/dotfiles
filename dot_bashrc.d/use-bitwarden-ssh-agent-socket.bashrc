#!/bin/bash
#
# Mount the Bitwarden SSH-Agent socket (if it exists)

# https://bitwarden.com/help/ssh-agent/
SOCKET_PATH_BASE="${HOME}/.bitwarden-ssh-agent.sock"
SOCKET_PATH_FLATPAK="${HOME}/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock"

# Try to mount the socket
if [[ -S "${SOCKET_PATH_FLATPAK}" ]] ; then
	echo "Using Bitwarden Flatpak SSH-Agent."
	export SSH_AUTH_SOCK="${SOCKET_PATH_FLATPAK}"
elif [[ -S "${SOCKET_PATH_BASE}" ]] ; then
	echo "Using Bitwarden SSH-Agent."
	export SSH_AUTH_SOCK="${SOCKET_PATH_BASE}"
else
	echo "Bitwarden socket not found, cannot mount SSH-Agent."
fi
