#!/bin/bash
set -ex

#create android project with some adjustments

# create android and ios directories
yarn expo prebuild

# dark splash
# todo: test better, i don't think this is working. during the build i see: 'The android project is malformed, project files will be cleared and reinitialized.'
cp ./scripts/xml/colors.xml \
  ./android/app/src/main/res/values-night/colors.xml
