Use the workflow id to mark your CloudFormation stacks so that you can reference them later on (ex: rollback). 
    aws cloudformation deploy \
        --template-file .circleci/files/backend.yml \
        --stack-name "udapeople-backend-${CIRCLE_WORKFLOW_ID:0:7}" \
        --parameter-overrides ID="${CIRCLE_WORKFLOW_ID:0:7}"  \
        --tags project=udapeople