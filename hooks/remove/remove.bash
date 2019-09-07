#!/usr/bin/env bash

local tag="$1" ; shift
case "$tag" in
  finish)
    echo "install_dir : $1"
    echo "version_dir : $2"
    echo "source_dir  : $3"
    echo "archive_file: $4"
    ;;
esac
