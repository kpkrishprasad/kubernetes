#!/bin/bash
set -exu

ROOT_DIR=$(git rev-parse --show-toplevel)
CLUSTER=${1-kind1}
CONTEXT=kind-${CLUSTER}

echo "Creating cluster [$CLUSTER] ..."
kind create cluster -n $CLUSTER --config=clusters/${CLUSTER}.yaml || true

for NAMESPACE in demo test
do
    kubectl --context ${CONTEXT} create ns ${NAMESPACE} || true
done