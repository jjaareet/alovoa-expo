#!/bin/bash
set -e

#create android project with some adjustments

yarn expo prebuild
echo "Small Android adjustments..."
# dark splash
# todo: test better, i don't think this is working. during the build i see: 'The android project is malformed, project files will be cleared and reinitialized.'
cp ./scripts/xml/colors.xml \
  ./android/app/src/main/res/values-night/colors.xml
