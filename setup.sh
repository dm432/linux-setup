#!/bin/bash

set -e

USRNAME="$(whoami)"

export ANSIBLE_STDOUT_CALLBACK=debug

ansible-playbook -v setup.yaml -i inventory_local.ini --ask-become-pass --extra-vars "local_user=$USRNAME"

sudo apt autoremove -y
