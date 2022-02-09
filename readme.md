# c2-docker

[Common docker images](https://hub.docker.com/u/clearc2)

Pick a base image tag from [cypres](https://hub.docker.com/r/cypress/browsers/tags) to build a new Clear C2 version.

Pass the tag, the part of the name following `browsers:`, to the script `build-image.sh`.  Then go work on something else for a few minutes.

If you encounter errors be sure you have one of the latest versions of docker desktop for mac installed and keep reading.

If you are using an Apple M1 chip you need to enble docker to build multi architecture images.  [See docker directions](https://docs.docker.com/desktop/multi-arch/)
Generally, you need to create and use a new builder context
`docker buildx create --name multiarch-builder`
Then use that new builder
`docker buildx use multiarch-builder`

Now you are ready to build in multiple platforms in parallel and push to docker hub when complete.
`docker buildx build --platform linux/amd64,linux/arm64 -t clearc2/browsers:node16.13.0-chrome95-ff94 --push .`


