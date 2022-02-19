#!/bin/bash

NAME=$1
LASTNAME=$2 
SHOW=$3

if [ "$SHOW" = "true" ]; then
  echo "Hy $NAME $LASTNAME . This is the current date $(date)"
else
  echo "Just type SHOW true"
fi
