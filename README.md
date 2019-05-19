# codebuild-demo

This repository contains sample code (java and python) as well as scripts and CloudFormation templates that will help you get started with AWS CodeBuild.

## CodeBuild and GitHub
The "connect_codebuild_to_github.sh" script at the root of the repository uses a personal access token for the GitHub user "codebuild-demo" in order to connect your AWS account with CodeBuild. The CodeBuild demo projects defined in the CloudFormation templates connect to this public repository, but the CodeBuild service has a requirement that you authenticate to GitHub, even when pulling down a public repository. We are using this method because CloudFormation does NOT support adding GitHub credentials/connectivity to CodeBuild at this time. 

The "github_creds.json" file contains the credentials.

## Region specific
Be aware what region you are operating in, as the CodeBuild service is region specific. If you want to use these credentials to connect CodeBuild to GitHub, so that you can run your CodeBuild builds in a particular region, make sure to set your region appropriately. 
Example: 
export AWS_DEFAULT_REGION=us-east-1

## Setting up
You'll first need to install the AWS CLI. You should then run the "./connect_codebuild_to_github.sh" shell script, which will connect CodeBuild to GitHub for you.

After that, you can run the CloudFormation templates contained in the programminglanguage-example directories, in order to create CodeBuild build projects for each of those code types. You can upload these CloudFormation templates using the CloudFormation web console, or you can use the CLI.
Example: 
aws cloudformation create-stack --stack-name codebuild-demo --template-body file://python-example/cloudformation_python_build_project.yml --capabilities CAPABILITY_NAMED_IAM

## Updates
Trigger a AWS CodePipeline execution.
