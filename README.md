# Getting Started With Kpack

Getting ready to get your toes wet with kpack but intimidated about where and how to start? This repo has you covered! We're currently configured to work with kpack release 0.0.8 but we'll try and keep up to date with releases as they come out. 

## Resources

* kpack release
  * https://github.com/pivotal/kpack/releases
    * release.yaml
    * logs
      * You need this utility in your path top easily view logs from the builds.
* kpack install
  * https://github.com/pivotal/kpack/blob/master/docs/install.md
* kpack tutorial
  * https://github.com/pivotal/kpack/blob/master/docs/tutorial.md
* A default [storage class](https://kubernetes.io/docs/concepts/storage/storage-classes/)
  * we need this to dynamically provision volumes

## Goals

* Brief introduction to Cloud Native Buildpacks
  * Stacks
  * Buildpacks
  * Lifecycle
* Brief introduction to kpack
  * Builders
    * ClusterBuilder
    * Builder
    * CustomBuilders
  * Builds
  * Images
  * Stacks
* install kpack on kubernetes
  * TKG-i Cluster in AWS
  * Locally on Docker desktop
* Build an application
  * Spring-petclinic (Spring Boot)
* Publish the image to docker hub
* Run the image locally
* Update the image
* [Stretch Goal] Update the stack
  * Custom Builder
    * Set stack
    * Build image with custom stack
    * Update stack
    * Watch rebase
## Next Steps

Find more information on buildpacks:

* https://buildpacks.io 
* Introductions to Cloud Native Buildpacks
  * https://www.katacoda.com/ciberkleid/courses/cloud-native-buildpacks
* VMware Tanzu
  * https://cloud.vmware.com/tanzu