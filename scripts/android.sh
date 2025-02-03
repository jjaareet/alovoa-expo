#!/bin/bash
set -ex

#create android project with some adjustments

# create android and ios directories
yarn expo prebuild

# dark splash
cp ./scripts/xml/colors.xml \
  ./android/app/src/main/res/values-night/colors.xml
