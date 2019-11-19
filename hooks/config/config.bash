#!/usr/bin/env bash
#
# Fook for config
#
# arguments:
#   $1: tag
#

PGENV_HOOK_PATH[${#PGENV_HOOK_PATH[@]}]="$PWD"
