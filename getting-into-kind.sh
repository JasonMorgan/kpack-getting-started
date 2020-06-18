#!/bin/bash
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.8.1/kind-$(uname)-amd64
chmod +x ./kind
sudo mv kind /usr/local/bin

kind create cluster
watch kubectl get nodes