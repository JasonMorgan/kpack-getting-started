#!/bin/bash

cd ~/kpack

k apply -f kpack-0.0.8.yaml
k apply -f cluster-builder.yaml
k api-resources --api-group build.pivotal.io
k get builders,builds,clusterbuilders,images,sourceresolvers --all-namespaces
k apply -f .priv/
k apply -f image.yaml
logs -image tutorial-image -namespace kpack
docker inspect jasonmorgan/tutorial-image | jq '.[].Config.Labels."io.buildpacks.lifecycle.metadata" | fromjson | .buildpacks'

## New tab
k get image
k get builds
k get pods
docker run -it --rm -p 8080:8080 jasonmorgan/tutorial-image
## Browse to localhost:8080
## Update image ref to 4e1f87407d80cdb4a5a293de89d62034fdcbb847

