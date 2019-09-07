#!/usr/bin/env bash

local tag="$1"; shift
case "$tag" in
  finish)
    echo "exported: $1"
    ;;
  *)
    ;;
esac
