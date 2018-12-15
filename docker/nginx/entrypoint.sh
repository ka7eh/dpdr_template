#!/usr/bin/env bash

HOSTS=(api)

for host in ${HOSTS[@]}; do
    until nc -z $host 8000; do
        echo "Waiting for ${host}..."
        sleep 1
    done
done

nginx -g "daemon off;"