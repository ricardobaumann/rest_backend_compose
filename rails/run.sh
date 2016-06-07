#!/bin/sh
rm -rf $name
git clone $repo $name
cd $name
git checkout $branch
git pull origin $branch
bundle install
rake db:migrate
rails s -b 0.0.0.0