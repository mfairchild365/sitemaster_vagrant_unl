SITEMASTER_BASEDIR="/var/www/html/sitemaster"
SITEMASTER_INSTALL="scripts/install.php"
SCRIPT="`readlink -e $0`"
SCRIPTPATH="`dirname $SCRIPT`"

echo "installing sitemaster"

#Go to the basedir to perform commands.
cd $SITEMASTER_BASEDIR

git clone https://github.com/UNLSiteMaster/site_master.git .

git submodule init
git submodule update

php $SITEMASTER_INSTALL

#copy .htaccess
if [ ! -f ${SITEMASTER_BASEDIR}/.htaccess ]; then
    echo "Creating .htaccess"
    cp ${SCRIPTPATH}/data/sample.htaccess ${SITEMASTER_BASEDIR}/.htaccess
fi

#copy config
if [ ! -f ${SITEMASTER_BASEDIR}/config.inc.php ]; then
    echo "Creating config.inc.php"
    cp ${SCRIPTPATH}/data/config.sample.php ${SITEMASTER_BASEDIR}/config.inc.php
fi

echo "FINISHED installing sitemaster"
