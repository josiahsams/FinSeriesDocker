#!/bin/bash

# if [ "$JUST_RUN" = "N" ]; then
#  echo switching node to version $NODE_VERSION
#  n $NODE_VERSION --quiet
# fi

echo node version: `node --version`

if [ "$JUST_RUN" = "N" ]; then
  git clone $GIT_URL app
  cd app
  git checkout nifty_docker
fi

echo "Sleep for 10 seconds to sync up with MongoDB"
sleep 10

echo "DB initialization"
python mongoClient.py

echo "DB updation"
python fetch.py

cd $APP_HOME
echo Application Home: $APP_HOME

if [ "$JUST_RUN" = "N" ]; then
  npm install --production --silent
fi

if [ "$APP_STARTUP" = "" ]; then
  npm run $NPM_SCRIPT
else
  node $APP_STARTUP
fi
