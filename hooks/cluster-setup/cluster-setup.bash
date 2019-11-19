#!/usr/bin/env bash
#
# Fook for cluster-setup
#
# arguments:
#   $1: tag
#

local tag="$1"; shift
case "$tag" in

  # Called on set up primary server
  # arguments:
  #   $1: primary or standby server name
  #   $2: path of pgdata
  #   $3: port number
  #   $4: include file path
  #   $5: archive directory
  setup_primary)
    echo "==> hook setup_primary"
    echo "primary_server : $1"
    echo "pgdata         : $2"
    echo "port           : $3"
    echo "include_file   : $4"
    echo "archive_dir    : $5"

    {
      echo "log_lock_waits = on"
    } >> "$4"

    ;;

  # Called on set up standby server
  # arguments:
  #   $1: primary or standby server name
  #   $2: path of pgdata
  #   $3: port number
  #   $4: include file path
  #   $5: archive directory
  setup_standby)
    echo "==> hook setup_standby"
    echo "standby_server : $1"
    echo "pgdata         : $2"
    echo "port           : $3"
    echo "include_file   : $4"
    echo "archive_dir    : $5"
    ;;

  *)
    : # always do
    ;;

esac
