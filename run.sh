#!/bin/bash

FOLDER=$(date +%Y)
TARGET=$(date +%Y/%Y-%m-%d)

if [ ! -d "${FOLDER}" ]; then
    mkdir -p "${FOLDER}"
fi

cd /opt/apps/sugarbaby
cd /opt/apps/sugardaddy

bash ./run.sh > "/opt/apps/sugarbaby/${TARGET}"

cd -

cp "${TARGET}" latest
