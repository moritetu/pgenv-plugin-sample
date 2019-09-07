#!/usr/bin/env bash

local tag="$1"; shift
case "$tag" in
  write)
    echo "envfile: $pgenv_instance_env_file"
    ;;
  print)
    echo "export PGENV_PLUGIN_SAMPLE_VERSION=0.1"
    ;;
  *)
    ;;
esac
