#!/usr/bin/env bash
#
# Fook for install
#
# arguments:
#   $1: tag
#

local tag="$1" ; shift
case "$tag" in

  # Called before doing configure
  # arguments:
  #   $1: configure options ($configure_options, writable)
  before_configure)
    # Modify configure options
    #configure_options+=" --enable-debug --enable-cassert"
    #configure_options+=" --enable-coverage"
    ;;

  # Called before doing make
  # arguments:
  #   $1: make command ($make_command, writable)
  before_make)
    #make_command="install-world"
    ;;

  # Called after installing
  # arguments:
  #   $1: specified install directory if --install-dir option
  #   $2: default install directory
  finish)
    echo "installed: $2"
    ;;

  *)
    : # always do
    ;;

esac
