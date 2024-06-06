#!/usr/bin/env bash
### Create Cluster  ###

kind create cluster --config=kind-calico.yaml


### Setup Calico ###
helm repo add projectcalico https://projectcalico.docs.tigera.io/charts
helm install calico projectcalico/tigera-operator --version v3.28.0


# install calicoctl
#curl -L https://github.com/projectcalico/calico/releases/download/v3.28.0/calicoctl-darwin-amd64 -o calicoctl
#chmod +x ./calicoctl
#mv ./calicoctl /usr/local/bin/calicoctl


