#!/usr/bin/env bash
#
# Fook for export
#
# arguments:
#   $1: tag
#

local tag="$1"; shift
case "$tag" in

  # Called after archiving the binary
  # arguments:
  #   $1: exported file
  finish)
    echo "exported: $1"
    ;;
  *)
    : # always do
    ;;

esac
