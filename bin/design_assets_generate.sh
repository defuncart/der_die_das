#!/usr/bin/env bash

fvm flutter test --update-goldens --tags=golden --dart-define GENERATE_DESIGN_ASSETS=true

cp -r test/design_assets/goldens/app_icons assets_dev
cp -r test/design_assets/goldens/google_play_assets assets_dev
cp -r test/design_assets/goldens/screenshots assets_dev

rm -R test/design_assets/goldens

fvm flutter pub run flutter_launcher_icons
