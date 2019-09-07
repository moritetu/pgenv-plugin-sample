#!/usr/bin/env bash

local tag="$1"; shift
case "$tag" in
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
  setup_standby)
    echo "==> hook setup_standby"
    echo "standby_server : $1"
    echo "pgdata         : $2"
    echo "port           : $3"
    echo "include_file   : $4"
    echo "archive_dir    : $5"
    ;;
  *)
    ;;
esac
