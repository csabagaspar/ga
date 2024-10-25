#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

cp $CURRENT_ABSOLUTE_DIR/configs/controllers/*.vdf $STEAM_CONTROLLERS_DIR/es-de
cp $CURRENT_ABSOLUTE_DIR/configs/shortcuts.vdf $STEAM_CONFIG_DIR
