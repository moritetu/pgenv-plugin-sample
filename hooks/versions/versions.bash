#!/usr/bin/env bash

local tag="$1" ; shift
case "$tag" in
  refresh)
    echo "version file: $1"
    ;;
esac
