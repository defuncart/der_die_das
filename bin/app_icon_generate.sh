#!/usr/bin/env bash

mkdir -p assets_dev/app_icons/

fvm flutter test --update-goldens --tags=golden --dart-define GENERATE_APP_ICON=true

mv test/design_assets/goldens/app_icon.png assets_dev/app_icons/app_icon.png

rm -R test/design_assets/goldens
