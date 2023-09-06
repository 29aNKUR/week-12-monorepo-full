#!/bin/bash
export NVM_DIR="/home/ubuntu/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Use the desired Node.js version
nvm use v20.5.1

cd /home/ubuntu/week-12-monorepo-full
git pull origin master
yarn build
/home/ubuntu/.nvm/versions/node/v20.5.1/bin/pm2 stop react
/home/ubuntu/.nvm/versions/node/v20.5.1/bin/pm2 start npm --name "react" -- run "start:react"


