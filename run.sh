#!/bin/bash

if [ -e /run/secrets/aws-secret-key ]; then
    secret=$(< /run/secrets/aws-secret-key)
    export AWS_SECRET_ACCESS_KEY=$secret
fi

source /etc/cont-init.d/00-welcome.sh
source /etc/cont-init.d/01-gen-confd-config.sh
source /etc/cont-init.d/02-init-confd.sh
source /etc/cont-init.d/04-run-backup.sh
