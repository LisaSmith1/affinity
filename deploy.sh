#!/bin/bash -e

# This should be added to a script
# Push image to ECR
export PATH=$PATH:$HOME/.local/bin
if [[ "$TRAVIS_BRANCH" == "docker-stuff" ]]; then
  eval $(aws ecr get-login --no-include-email --region us-west-2);
  #Lets build, tag and push our image
  docker build -t ${PROJECT} .;
  docker tag ${PROJECT}:${VERSION} 973408325585.dkr.ecr.us-west-2.amazonaws.com/${PROJECT}:${VERSION};
  docker push 973408325585.dkr.ecr.us-west-2.amazonaws.com/affinitytest:${VERSION};
 fi