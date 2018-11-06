#!/bin/bash -xeu

STACK_NAME=SageMaker-Redshift
TEMPLATE_URL=https://s3.amazonaws.com/midaisuk-public-templates/sagemaker-redshift/master.yaml
REGION=ap-northeast-1

MASTER_USER_PASSWORD=$(mkpasswd -l 12 -s 0)


# deploy all
aws cloudformation validate-template \
    --template-url ${TEMPLATE_URL} \
    --region ${REGION}

aws cloudformation create-stack \
    --stack-name ${STACK_NAME} \
    --template-url ${TEMPLATE_URL} \
    --parameters \
        ParameterKey=MasterUserPassword,ParameterValue=${MASTER_USER_PASSWORD} \
    --capabilities CAPABILITY_NAMED_IAM \
    --region ${REGION}