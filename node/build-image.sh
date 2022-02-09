#!/bin/bash

render() {
sedStr="
  s!%%CYPRESS_TAG%%!$cypresstag!g;
"
sed -r "$sedStr" $1
}

cypresstag="$1"
mkdir $1
render Dockerfile.template > $1/Dockerfile
cd $1

if [[ `uname -m` == 'arm64' ]]; then
  # Build for multiple platforms
  echo "Apple Silicon detected will use docker buildx build"
  docker buildx build --platform linux/amd64,linux/arm64 -t clearc2/browsers:$1 --push .
else
  # Use the default builder Docker
  docker build -t clearc2/browsers:$1 --push .
fi

# Now lets push to github changes here
git commit -am "chore(build): building new image from cypress/browsers:$1"
git tag -f $1
git push -f origin $1
git push
