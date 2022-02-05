#!/usr/bin/python
# -*- coding: utf8 -*-

import subprocess

def get_password(service, user):
    args = ["keyring", "get", service, user]
    try:
        return subprocess.check_output(args).strip()
    except subprocess.CalledProcessError:
        return ""
