#!/usr/bin/env bash
#
# Fook for versions
#
# arguments:
#   $1: tag
#

local tag="$1" ; shift
case "$tag" in

  # Called after refresing version information
  # arguments:
  #   $1: version file
  refresh)
    echo "version file: $1"
    ;;

  *)
    : # always do
    ;;

esac
