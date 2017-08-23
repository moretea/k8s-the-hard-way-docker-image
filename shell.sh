#!/usr/bin/env bash
set -euo pipefail
dir=$(dirname $(readlink -f $0))
cloud_sdk_id_file=$dir/.docker-container-id
echo $dir
docker build . --iidfile $cloud_sdk_id_file

mkdir -p $dir/.home
docker run -v$dir/.home:/home/k8sthw --rm -ti $(cat $cloud_sdk_id_file)
