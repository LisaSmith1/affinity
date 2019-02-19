#!/bin/bash -e

# This should be added to a script
# Push image to ECR
- export PATH=$PATH:$HOME/.local/bin
- if [[ "$TRAVIS_BRANCH" == "docker-stuff" ]]; then
  # Get AWS credentials for ECR
  eval $(aws ecr get-login --no-include-email --region us-west-2) ;
  # Build, tag and push new tag of image
  docker build -t affinity:v1.5 . ;
  docker tag affinity:v1.5 973408325585.dkr.ecr.us-west-2.amazonaws.com/affinitytest:v1.5 ;
  docker push 973408325585.dkr.ecr.us-west-2.amazonaws.com/affinitytest:v1.5 ;
  fi
