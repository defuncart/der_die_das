#!/usr/bin/env bash

# enable arb_utils globally on machine
# if already enabled, this will download latest version, if one is available
dart pub global activate arb_utils

# generate from csv
dart pub get
dart run arb_generator

# sort arbs
dart pub global run arb_utils:sort assets_dev/l10n/l10n_en.arb
dart pub global run arb_utils:sort assets_dev/l10n/l10n_de.arb
dart pub global run arb_utils:sort assets_dev/l10n/l10n_pl.arb

# generate localization delegates
flutter pub get