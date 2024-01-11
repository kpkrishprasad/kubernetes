#!/bin/bash
set -exu

CLUSTER=${1-cluster1}
CONTEXT=kind-${CLUSTER}
NAMESPACE=server
    
kubectl --context ${CONTEXT} create ns ${NAMESPACE} || true
kubectl --context ${CONTEXT} -n ${NAMESPACE} apply -k kustomize/apps/httpbin/local/$CLUSTER