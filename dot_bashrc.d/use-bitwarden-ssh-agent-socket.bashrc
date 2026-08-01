# shellcheck shell=bash
#
# Mount the Bitwarden SSH-Agent socket (if it exists)

# https://bitwarden.com/help/ssh-agent/
socket_path_base="${HOME}/.bitwarden-ssh-agent.sock"
socket_path_flatpak="${HOME}/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock"

log() {
	echo "[$(date +'%Y-%m-%dT%H:%M:%S%z') (${BASH_SOURCE[0]})]: $*"
}

# Try to mount the socket
if [[ -S "${socket_path_flatpak}" ]]; then
	log "Using Bitwarden Flatpak SSH-Agent."
	export SSH_AUTH_SOCK="${socket_path_flatpak}"
elif [[ -S "${socket_path_base}" ]]; then
	log "Using Bitwarden SSH-Agent."
	export SSH_AUTH_SOCK="${socket_path_base}"
else
	log "Bitwarden socket not found, cannot mount SSH-Agent."
fi
