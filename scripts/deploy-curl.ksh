#!/bin/bash
set -exu

CLUSTER=${1-cluster1}
CONTEXT=kind-${CLUSTER}
NAMESPACE=demo

kubectl --context ${CONTEXT} create ns ${NAMESPACE} || true
kubectl --context ${CONTEXT} -n ${NAMESPACE} apply -k kustomize/apps/curl/local/$CLUSTER