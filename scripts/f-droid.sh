#!/bin/bash
set -e

#create android project with some adjustments

# small android adjustments
./scripts/android.sh
# apply node_module patches (`rm -rf node_modules && yarn` to reverse)
yarn patch-package --patch-dir scripts/patches
# remove signing config
sed -i '' '/signingConfig /d' android/app/build.gradle
sed -i '' 's/FLAG_FDROID = false/FLAG_FDROID = true/' Global.tsx