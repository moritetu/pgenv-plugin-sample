#!/usr/bin/env bash
#
# Fook for env
#
# arguments:
#   $1: tag
#

local tag="$1"; shift
case "$tag" in

  # Called after writing environment
  write)
    echo "envfile: $pgenv_instance_env_file"
    ;;

  # Called before printing environment
  print)
    echo "export PGENV_PLUGIN_SAMPLE_VERSION=0.1"
    ;;

  *)
    : # always do
    ;;

esac
