#!/bin/sh

DOMAIN_NAME=www.bizzflow.click
STACK_NAME=www-bizzflow-click-stack

# output=$(aws cloudformation describe-stack-events \
# --stack-name $STACK_NAME \
# --query 'StackEvents[?ResourceStatusReason != `null`] | [?contains(ResourceStatusReason, `Content`) == `true`].ResourceStatusReason' \
# | grep -o -E "{.*}")

output=$(aws cloudformation describe-stack-events \
--stack-name $STACK_NAME)

echo "OUTPUT = $output."
