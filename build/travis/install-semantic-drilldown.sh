#! /bin/bash
set -ex

BASE_PATH=$(pwd)
MW_INSTALL_PATH=$BASE_PATH/../mw

cd $MW_INSTALL_PATH

git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/SemanticDrilldown.git
echo 'require_once "$IP/extensions/SemanticDrilldown/SemanticDrilldown.php";' >> LocalSettings.php
