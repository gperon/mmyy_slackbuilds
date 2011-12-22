#!/bin/sh
export OPENJDK_HOME=/usr/lib/openjdk
export MANPATH="${MANPATH}:${OPENJDK_HOME}/man"
export PATH="${PATH}:${OPENJDK_HOME}/bin:${OPENJDK_HOME}/jre/bin"
