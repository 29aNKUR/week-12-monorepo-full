#!/bin/bash
export PATH=$PATH:/home/ubuntu/.nvm/versions/node/v20.6.0/bin

cd /home/ubuntu/week-12-monorepo-full
git pull origin master
yarn install
yarn build
pm2 stop next
pm2 start npm --name "next" -- run "start:next"
