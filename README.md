# codebuild-demo

This repository contains sample code (java and python) as well as scripts and CloudFormation templates that will help you get started with AWS CodeBuild.

The "connect_codebuild_to_github.sh" script at the root of the repository uses a personal access token for the GitHub user "codebuild-demo" in order to connect your AWS account with CodeBuild. The CodeBuild demo projects defined in the CloudFormation templates connect to this public repository, but the CodeBuild service has a requirement that you authenticate to GitHub, even when pulling down a public repository. 

The "github_creds.json" file contains the credentials.

Be aware what region you are operating in, as these credentials are region specific. If you want to target a particular region, make sure to set your region appropriately. 
Example: export AWS_DEFAULT_REGION=us-east-1

You'll first need to install the AWS CLI. You should then run the "./connect_codebuild_to_github.sh" shell script, which will connect CodeBuild to GitHub for you.

After that, you can run the CloudFormation templates contained in the "java-example" and "python-example" directories, in order to create CodeBuild build projects for each of those code types. 
