#!/bin/sh

DOMAIN_NAME=www.bizzflow.click
STACK_NAME=www-bizzflow-click-stack

echo "Deploying stack '$STACK_NAME'..."
aws cloudformation validate-template --template-body file://template.yaml

aws cloudformation create-stack \
    --stack-name $STACK_NAME \
    --template-body file://template.yaml \
    --parameters file://parameters.json

echo "Stack '$STACK_NAME' deployed successfully."


./dns-validation.sh $DOMAIN_NAME $STACK_NAME
