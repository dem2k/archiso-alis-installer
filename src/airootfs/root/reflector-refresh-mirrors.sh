#!/usr/bin/env bash

pacman -Sy && reflector --latest 20 --sort rate --save /etc/pacman.d/mirrorlist

