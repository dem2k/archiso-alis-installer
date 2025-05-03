#!/usr/bin/bash

# if [[ "$USER" != "root" ]]; then
#   echo "FEHLER: Das Skript läuft nicht als Root, Starte mit sudo." >&2
# fi

# Datei, in der die letzte Version gespeichert wird
VERSION_FILE="./archiso-version.txt"

# Aktuelle archiso-Version ermitteln
CURRENT_VERSION=$(pacman -Q archiso 2>/dev/null | awk '{print $2}')
if [ -z "$CURRENT_VERSION" ]; then
    echo "FEHLER: archiso scheint nicht installiert zu sein." >&2
    exit 1
fi

# Prüfen, ob die Versionsdatei existiert
if [ ! -f "$VERSION_FILE" ]; then
    echo "$CURRENT_VERSION" > "$VERSION_FILE"
fi

# Letzte gespeicherte Version lesen
PREVIOUS_VERSION=$(cat "$VERSION_FILE")

# Versionen vergleichen
if [ "$CURRENT_VERSION" != "$PREVIOUS_VERSION" ]; then
    echo "FEHLER: archiso-Version hat sich geändert: $PREVIOUS_VERSION <> $CURRENT_VERSION"
    echo "Ist das ok, so lösche die Datei $VERSION_FILE und starte das Skript neu."
    exit 1
fi

set -x
rm -rf out
rm -rf tmp
set +x

mkarchiso -v -w tmp archiso

rm -rf tmp

chown -R $SUDO_USER:$SUDO_USER ./out

