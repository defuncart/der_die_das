#!/usr/bin/env bash

fvm dart run icon_font_generator:generator assets_dev/custom_icons assets/fonts/custom_icons.ttf --output-class-file=lib/core/theme/custom_icons.dart --class-name=CustomIcons
