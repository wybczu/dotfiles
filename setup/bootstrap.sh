#!/bin/bash

type -p ansible-playbook > /dev/null
if [ $? -ne 0 ]; then
	echo "Please install ansible on your machine:"
	echo "e.g. sudo apt install ansible"
	exit 1
fi

export ANSIBLE_ERROR_ON_UNDEFINED_VARS=True

ansible-playbook -i "localhost," -v desktop.yml "$@"
