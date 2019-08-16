#!/bin/bash
set -e
cp env.template .env
cp ./rails/rails.env.template ./rails/rails.env

if [[ "$OSTYPE" == "linux-gnu" ]]; then
   sed -i '' -e "s/PROJECT_DIRECTORY_NAME/$1/g"  $PWD/.env
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # have to do it this way because of mac OSX, will need to adjust for different OS's
    sed -i '' -e "s/PROJECT_DIRECTORY_NAME/$1/g"  $PWD/.env
else
    sed -i '' -e "s/PROJECT_DIRECTORY_NAME/$1/g"  $PWD/.env
fi