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

echo "installing UNL plugins"

git clone https://github.com/unl/sitemaster_plugin_auth_unl.git plugins/auth_unl
git clone https://github.com/unl/sitemaster_theme_unl.git plugins/theme_unl
git clone https://github.com/unl/sitemaster_plugin_unl.git plugins/unl
git clone https://github.com/UNLSiteMaster/metric_w3c_html.git plugins/metric_w3c_html
git clone https://github.com/UNLSiteMaster/metric_pa11y.git plugins/metric_pa11y

./plugins/metric_pa11y/install/install-centos.sh

php $SITEMASTER_INSTALL

echo "FINISHED installing sitemaster"
