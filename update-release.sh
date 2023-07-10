#!/bin/bash

# update-k8s.sh
set -feu	# Usage: $0 <RELEASE_VERSION>	# Fails when RELEASE_VERSION is not provided

RELEASE_VERSION=${RELEASE_VERSION}
sed -i "s|image: ghcr.io/gustavonlorenzo/pytest:.*|image: ghcr.io/gustavonlorenzo/pytest:$RELEASE_VERSION|" ./clusters/my-cluster/pytest/deployment.yml

