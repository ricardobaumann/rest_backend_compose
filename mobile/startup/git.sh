#!/bin/sh
rm -rf /var/www
cd /var && git clone --depth 1 https://17e236f9204a6e98c65200da779e2a684c995a5d@github.com/mesalva/api.git www && cd www && COMPOSER_HOME=/var/www php composer.phar selfupdate && COMPOSER_HOME=/var/www php composer.phar update

