#!/usr/bin/env bash

mkdir -p assets_dev/app_icons/

fvm flutter test --update-goldens --tags=golden --dart-define GENERATE_DESIGN_ASSETS=true

mv test/design_assets/goldens/app_icon.png assets_dev/app_icons/app_icon.png
mv test/design_assets/goldens/android_icon_foreground.png assets_dev/app_icons/android_icon_foreground.png
mv test/design_assets/goldens/google_play_feature_graphic_de.png assets_dev/google_play_assets/google_play_feature_graphic_de.png
mv test/design_assets/goldens/google_play_feature_graphic_en.png assets_dev/google_play_assets/google_play_feature_graphic_en.png
mv test/design_assets/goldens/google_play_feature_graphic_pl.png assets_dev/google_play_assets/google_play_feature_graphic_pl.png

rm -R test/design_assets/goldens

fvm flutter pub run flutter_launcher_icons
