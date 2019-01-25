#!/usr/bin/env bash

mkdir -p ~/.aws
cat > ~/.aws/credentials << EOL
[default]
aws_access_key_id = ${AWS_ACCESS_KEY_ID}
aws_secret_access_key = ${AWS_SECRET_ACCESS_KEY}
EOL

aws ssm get-parameters-by-path --region us-west-2 --with-decryption --path "/api/affinity/demo/" | jq -r '.Parameters[] | ([.Nam    e, "\"" + .Value + "\""]) | join("=")' > /tmp/dev.affinity.ini

# Remove unwanted info from parameters retruned
sed -i~ 's#/api/affinity/demo/##' /tmp/dev.affinity.ini

# Move the file from the tmp directory to the current
mv /tmp/dev.affinity.ini .env




