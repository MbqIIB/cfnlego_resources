# cfnlego_resources
Generate flatten list of supported AWS resources for use within cfndsl/cfnlego.

### Usage ###
Create your definition in resources/AWS/SERVICENAME/SERVICETYPE, eg resources/AWS/CodeDeploy/Deployment.yaml
define your resource type eg
```
AWS::CodeDeploy::DeploymentGroup:
  Properties: 
    ApplicationName: 
      Ref: "ApplicationName"
    AutoScalingGroups: 
      - Ref: CodeDeployAutoScalingGroups
    Deployment: 
      Description: "A sample deployment"
      IgnoreApplicationStopFailures: true
      Revision: 
        RevisionType: GitHub
        GitHubLocation: 
          CommitId: 
            Ref: CommitId
          Repository: 
            Ref: Repository
    ServiceRoleArn: 
      Ref: RoleArn
```

Once this is done create a feature branch and submit a pull request, once this is merged it will automatically be picked up on your next run when using https://github.com/elmobp/cfndsl

## Notes ###
This is only an interim solution until AWS publish a schema for CloudFormation

Many thanks to cfndsl and cfnlego for making this possible!


