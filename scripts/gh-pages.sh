#!/usr/bin/env bash

set -e

vendor/drush/drush/drush cron -l https://andy.propertysyariah.biz.id
vendor/drush/drush/drush tome:static -y -l https://andy.propertysyariah.biz.id
rm -rf gh-pages
git clone git@github.com:andyux01/andyux01.github.io.git gh-pages
cd gh-pages
git checkout master || git checkout -b master
cd ..
rm -rf gh-pages/*
cp -r html/* gh-pages/
cp CNAME gh-pages/CNAME
cd gh-pages
git add .
git commit -m 'Updating gh-pages site'
git push -u origin master