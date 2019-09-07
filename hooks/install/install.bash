#!/usr/bin/env bash

local tag="$1" ; shift
case "$tag" in
  before_configure)
    # Modify configure options
    configure_options="$configure_options --enable-debug"
    ;;
  before_make)
    make_command="install-world"
    ;;
  finish)
    echo "installed: $2"
    ;;
esac
