#!/bin/bash -e
OPENBOX_ENABLED=${OPENBOX_ENABLED:-1}
cd /app
if [ "$OPENBOX_ENABLED" = "1" ]; then
    exo run
else
    exec ./xtigervnc.sh
fi