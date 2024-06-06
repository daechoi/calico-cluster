#!/usr/bin/env bash

# The reflector is used to sync the secret created to another namespace

helm repo add emberstack https://emberstack.github.io/helm-charts
helm repo update
helm upgrade --install reflector emberstack/reflector 
