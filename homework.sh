#!/bin/bash

set -x

HOME_DIR="/home/$(whoami)"

rm -rf homework14
mkdir homework14

ping ya.ru -c 20 > homework14/yandexping.txt

tail -n 10 homework14/yandexping.txt

DESKTOP_DIR="/home/root/Desktop"
if [ ! -d "$DESKTOP_DIR" ]; then
    mkdir -p "$DESKTOP_DIR"
    chmod 777 "$DESKTOP_DIR"
fi

cp -r homework14 "$DESKTOP_DIR"

rm -rf homework14

echo 'gg'

set +x
