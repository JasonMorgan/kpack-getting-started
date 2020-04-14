#!/bin/bash
cd kpack

k apply -f stretch/custom-builder.yaml
k get custombuilder
k get stacks

k apply -f stretch/images
logs -image pas-golang-mysql -namespace kpack
logs -image pas-golang-redis -namespace kpack
logs -image kpack-spring-petclinic -namespace kpack

## Other tab

watch kubectl get images