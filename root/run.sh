#!/bin/bash
rm -r /tmp/* /tmp/.*
service dbus restart
su user -l -c '/1.sh'
