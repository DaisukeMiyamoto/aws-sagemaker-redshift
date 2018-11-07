aws-sagemaker-redshift
---

[![Launch](https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=ap-northeast-1#/stacks/new?stackName=SageMakerRedshift&templateURL=https://s3.amazonaws.com/midaisuk-public-templates/sagemaker-redshift/master.yaml
)

# Architecture

![Architecture](./img/architecture.png)

# Deploy

## Parameters

# Get Credential

https://docs.aws.amazon.com/ja_jp/redshift/latest/mgmt/generating-iam-credentials-cli-api.html

```
aws redshift get-cluster-credentials --cluster-identifier sagemakerredshift-redshiftcluster-XXXXXXX --db-user tmp_user --db-name dev --duration-seconds 3600
```
