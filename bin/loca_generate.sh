#!/usr/bin/env bash

# generate from csv
fvm dart pub get
fvm dart run arb_generator

# generate localization delegates
fvm flutter pub get
