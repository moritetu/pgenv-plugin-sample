#!/usr/bin/env bash
#
# Fook for remove
#
# arguments:
#   $1: tag
#

local tag="$1" ; shift
case "$tag" in

  # Called after removing
  # arguments:
  #   $1: install directory
  #   $2: version directory
  #   $3: source directory
  #   $4: archive directory
  finish)
    echo "install_dir : $1"
    echo "version_dir : $2"
    echo "source_dir  : $3"
    echo "archive_file: $4"
    ;;

  *)
    : # always do
    ;;

esac
