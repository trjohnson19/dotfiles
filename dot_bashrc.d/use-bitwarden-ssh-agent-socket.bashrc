#!/bin/bash
#
# Mount the Bitwarden SSH-Agent socket (if it exists)

# https://bitwarden.com/help/ssh-agent/
SOCKET_PATH_BASE="${HOME}/.bitwarden-ssh-agent.sock"
SOCKET_PATH_FLATPAK="${HOME}/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock"

log () {
	echo "[$(date +'%Y-%m-%dT%H:%M:%S%z') (${BASH_SOURCE[0]})]: $*"
}

# Try to mount the socket
if [[ -S "${SOCKET_PATH_FLATPAK}" ]]; then
	log "Using Bitwarden Flatpak SSH-Agent."
	export SSH_AUTH_SOCK="${SOCKET_PATH_FLATPAK}"
elif [[ -S "${SOCKET_PATH_BASE}" ]]; then
	log "Using Bitwarden SSH-Agent."
	export SSH_AUTH_SOCK="${SOCKET_PATH_BASE}"
else
	log "Bitwarden socket not found, cannot mount SSH-Agent."
fi
