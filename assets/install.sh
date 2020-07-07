#!/usr/bin/env bash
set -e
source /assets/colorecho

trap "echo_red '******* ERROR: Something went wrong.'; exit 1" SIGTERM
trap "echo_red '******* Caught SIGINT signal. Stopping...'; exit 2" SIGINT

ls -al /install

if [ ! -f /install/oracle-instantclient*.rpm ]; then
	echo_red "No rpm-file for Oracle Instant Client found!"
	exit 1
fi

echo_yellow "Installing Oracle Instant Client ..."

rpm -i /install/oracle-instantclient*.rpm && echo_green "Successfully installed." || echo_red "ERROR: Installation aborted"