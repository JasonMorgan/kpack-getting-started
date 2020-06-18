#!/bin/bash

cd kpack-getting-started

### Warning!!! Before you can use kpack you need to have a default storage class for kubernetes
#### In the demo environments kpack and docker-for-desktop have default storage classes out of the box

curl -Lo logs.tgz https://github.com/pivotal/kpack/releases/download/v0.0.9/logs-v0.0.9-linux.tgz
curl -L https://github.com/pivotal/kpack/releases/download/v0.0.9/release-0.0.9.yaml > kpack-0.0.9.yaml

k apply -f kpack-0.0.9.yaml
k apply -f cluster-builder.yaml
k api-resources --api-group build.pivotal.io
k get builders,builds,clusterbuilders,images,sourceresolvers --all-namespaces
k apply -f .priv/
k apply -f image.yaml
logs -image tutorial-image
docker pull jasonmorgan/tutorial-image
docker inspect jasonmorgan/tutorial-image | jq '.[].Config.Labels."io.buildpacks.lifecycle.metadata" | fromjson | .buildpacks'

## New tab
k get image
k get builds
k get pods
docker run -it --rm -p 8080:8080 jasonmorgan/tutorial-image
## Browse to localhost:8080
## Update image ref to 4e1f87407d80cdb4a5a293de89d62034fdcbb847

