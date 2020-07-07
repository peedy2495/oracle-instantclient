#!/usr/bin/env bash

set -e
source /assets/colorecho

if [ ! -d "/usr/lib/oracle/11.2" ]; then
	echo_yellow "Oracle Instant Client is not installed. Installing..."
	/assets/install.sh
fi

/bin/bash
