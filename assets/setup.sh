set -e

source /assets/colorecho
trap "echo_red '******* ERROR: Something went wrong.'; exit 1" SIGTERM
trap "echo_red '******* Caught SIGINT signal. Stopping...'; exit 2" SIGINT

#Install prerequisites directly without virtual package
deps () {

	echo "Installing dependencies"
	yum -y install libaio libaio.i686 unixODBC
	yum clean all
	rm -rf /var/lib/{cache,log} /var/log/lastlog

}

sysctl () {

	cp /assets/sysctl.conf /etc/sysctl.conf

}

deps
sysctl