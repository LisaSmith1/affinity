#!/bin/bash -e

# This should be added to a script
- export PATH=$PATH:$HOME/.local/bin
- if [[ "$TRAVIS_BRANCH" == "docker-stuff" ]]; then
  eval $(aws ecr get-login --no-include-email --region us-west-2) ;
  docker build -t affinity:v1.5 . ;
  docker tag affinity:v1.5 973408325585.dkr.ecr.us-west-2.amazonaws.com/affinitytest:v1.5 ;
  docker push 973408325585.dkr.ecr.us-west-2.amazonaws.com/affinitytest:v1.5 ;
  fi



# Push image to ECR

