#!/usr/bin/env bash

fvm flutter test --update-goldens --tags app_store_screenshots

fvm flutter pub run flutter_launcher_icons
