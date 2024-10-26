#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

#controllers
cp $CURRENT_ABSOLUTE_DIR/configs/controllers/*.vdf $STEAM_CONTROLLERS_DIR/es-de

#shortcuts
mkdir -p $STEAM_CONFIG_DIR/grid
cp $CURRENT_ABSOLUTE_DIR/configs/grid/*.* $STEAM_CONFIG_DIR/grid
cp $CURRENT_ABSOLUTE_DIR/configs/shortcuts.vdf $STEAM_CONFIG_DIR
