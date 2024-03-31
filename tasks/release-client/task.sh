#!/usr/bin/env bash
set -exo

export UPDATE_LATEST=$(echo "$UPDATE_LATEST" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' | tr -s ' ')
export RELEASE_TAG=$(echo "$RELEASE_TAG" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' | tr -s ' ')
#if release_tag is equal to v5.2.* then install private-common
if [[ "$RELEASE_TAG" == "NONE" ]] ;
then
    echo "\$RELEASE_TAG cannot be NONE" >&2
    exit 1
fi

cd ../..
./release-scripts/prepare-release-formula.sh
