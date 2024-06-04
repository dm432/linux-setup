#!/bin/bash

set -e

if [ "$(whoami)" != "root" ] ; then
  sudo "$0" "$(whoami)" "$@"
  exit $?
fi

USRNAME="$1"
shift
if [ "$USRNAME" = "" ] ; then
  echo "Default local user name as argument required"
  exit 1
fi

export ANSIBLE_STDOUT_CALLBACK=debug

LOCAL_INVENTORY=""
if [ -e inventory_local.ini ] ; then
  LOCAL_INVENTORY="-i inventory_local.ini"
fi

ansible-playbook -v setup.yaml $LOCAL_INVENTORY --extra-vars "local_user=$USRNAME"

apt autoremove -y
