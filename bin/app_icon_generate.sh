#!/usr/bin/env bash

mkdir -p assets_dev/app_icons/

fvm flutter test --update-goldens --tags=golden --dart-define GENERATE_APP_ICON=true

mv test/design_assets/goldens/app_icon.png assets_dev/app_icons/app_icon.png
mv test/design_assets/goldens/android_icon_foreground.png assets_dev/app_icons/android_icon_foreground.png

rm -R test/design_assets/goldens

fvm flutter pub run flutter_launcher_icons
