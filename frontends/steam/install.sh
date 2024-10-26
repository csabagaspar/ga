#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

#controllers
mkdir -p "$STEAM_CONTROLLERS_DIR/es-de"
mkdir -p "$STEAM_CONTROLLERS_DIR/es-de/Icons"
cp -r "$CURRENT_ABSOLUTE_DIR/configs/controllers/Icons/*.png" "$STEAM_CONTROLLERS_DIR/es-de/Icons"
cp -r "$CURRENT_ABSOLUTE_DIR/configs/controllers/*.vdf" "$STEAM_CONTROLLERS_DIR/es-de"

#shortcuts
mkdir -p "$STEAM_CONFIG_DIR/grid"
cp -r "$CURRENT_ABSOLUTE_DIR/configs/grid/*.png" "$STEAM_CONFIG_DIR/grid"
cp -r "$CURRENT_ABSOLUTE_DIR/configs/grid/*.ico" "$STEAM_CONFIG_DIR/grid"
cp "$CURRENT_ABSOLUTE_DIR/configs/shortcuts.vdf" "$STEAM_CONFIG_DIR/"
