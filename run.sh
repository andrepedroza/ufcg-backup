#!/bin/bash

if [ -e /run/secrets/aws-secret-key ]; then
    secret=$(< /run/secrets/aws-secret-key)
    export AWS_SECRET_ACCESS_KEY=$secret
fi

/init
