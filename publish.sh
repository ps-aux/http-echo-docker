#!/usr/bin/env bash
cd "$(dirname "$0")"
set -e

name="abspro/http-echo"
tag=$1

if [[ -z ${tag} ]];then
    echo "Tag not provided"
    exit 1
fi

image_name=${name}:${tag}
docker build . -t  ${image_name}

docker push ${image_name}
