# POD

Deploying a pod

```
kubectl apply -f pod.yaml

kubectl --context kind-kind1  apply -f pod.yaml


```

# Context

- List all contexts
kubectl config get-contexts
- Default context 
kubectl config current-context
- Switch Context
 kubectl config use-context <context-name>
 example:  kubectl config use-context kind-kind1

 # K9s

 k9s -- connext to current context
 k9s --context kind-kind1

