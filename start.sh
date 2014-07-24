#!/bin/bash

GMETAD_DEBUG_LEVEL=${GMETAD_DEBUG_LEVEL:-0}

echo "debug_level $GMETAD_DEBUG_LEVEL" >> /etc/ganglia/gmetad.conf
echo "Starting Ganglia metadata daemon with debug level $GMETAD_DEBUG_LEVEL"
/usr/sbin/gmetad --pid-file=/var/run/gmetad.pid
