#!/bin/sh

if [ "$(command -v thefuck)" ]; then
	eval "$(thefuck --alias)"
fi
