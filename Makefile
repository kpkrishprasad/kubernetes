CLUSTER ?= kind1

kind:
	scripts/create-cluster.ksh ${CLUSTER}

curl:
	./scripts/deploy-curl.ksh ${CLUSTER}

httpbin:
	./scripts/deploy-httpbin.ksh ${CLUSTER}

clean:
	kind delete cluster --name ${CLUSTER}

