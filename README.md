Application in NodeJS which sends notification emails via AWS SNS subscription.

Considerations:
* The app will send a message to SNS Topic, the email subscription must be defined manually before.
* Each commit will trigger the CI/CD pipeline in CircleCI to build and publish the docker image in ECR.
* The changes will be reflected after a successful deployment in ECS.
* The application will run in the 8080 port by default instead the APP_PORT environment variable is defined
* The SNS ARN Topic will be read from an environment variable too.
* The environment variables are been set via the Task Definition on ECS, additionally the SNS ARN is being stored
in SSM Parameter Store service.

