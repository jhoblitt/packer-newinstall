set -o errexit

set -o verbose
if grep -q -i "CentOS release 6" /etc/redhat-release; then
    . /opt/rh/devtoolset-3/enable
fi
set +o verbose

source ./stack/loadLSST.bash
eups distrib install -t w_2015_45 lsst_apps