#Reference: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-access-tokens.html
#This script uses generic GitHub account credentials, for a GitHub user named "codebuild-demo", leveraging a personal access token.
#This allows the AWS CodeBuild service to connect to GitHub. Even though the repositories that we use in our demos are public, this is still a requirement by the Codebuild service.
#The AWS CLI is a prerequisite to use this script.
#See here fo the AWS CLI docs: https://aws.amazon.com/cli/

aws codebuild import-source-credentials --cli-input-json file://github_creds.json
aws codebuild list-source-credentials
