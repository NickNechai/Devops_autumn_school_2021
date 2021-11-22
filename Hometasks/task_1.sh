#!/bin/bash

if getent passwd "$1" >/dev/null 2>&1; then
  if [ -d "$2" ]; then
    sudo chown -R "$1": "$2"
  else
    echo "The directory $2 doesn't exist!"
  fi
else
  echo "The user doesn't exist - to change owner forbidden!"
fi
