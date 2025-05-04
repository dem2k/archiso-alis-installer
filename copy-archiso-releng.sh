#!/bin/bash

# Prüfe, ob das Paket 'archiso' installiert ist
if ! pacman -Q archiso > /dev/null 2>&1; then
  echo "FEHLER: archiso scheint nicht installiert zu sein?" >&2
  exit 1
fi

echo ""

set -x

## "kopiere archiso..."
cp -r /usr/share/archiso/configs/releng archiso

## "kopiere source..."
cp -r ./src/* archiso/

## "modifiziere srch iso..."
mv ./archiso/airootfs/usr/local/bin/Installation_guide ./archiso/airootfs/usr/local/bin/installation-guide

