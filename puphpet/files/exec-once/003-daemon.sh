SITEMASTER_BASEDIR="/var/www/html/sitemaster"
SITEMASTER_INSTALL="scripts/install.php"
SCRIPT="`readlink -e $0`"
SCRIPTPATH="`dirname $SCRIPT`"

sudo cp ${SCRIPTPATH}/data/example-upstart.conf /etc/init/sitemaster.conf
sudo start sitemaster
