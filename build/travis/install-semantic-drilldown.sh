#! /bin/bash
set -ex

BASE_PATH=$(pwd)
MW_INSTALL_PATH=$BASE_PATH/../mw

cd $MW_INSTALL_PATH/extensions
git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/SemanticDrilldown.git
ls -la
cd ..

echo 'require_once "$IP/extensions/SemanticDrilldown/SemanticDrilldown.php";' >> LocalSettings.php
cat LocalSettings.php
