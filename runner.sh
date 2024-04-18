#!/bin/bash

# Import functions.sh from the ./scripts directory
source ./scripts/functions.sh

# Call the initial_setup function
echo "Running some initial prerequisites..."
initial_setup



# Call the prepare_lambda function
echo "Preparing the lambda function..."
loadExampleBastionLambda

# Call the terraform_init function
echo "Initializing Terraform..."
terraform_init

echo "Runner almost successfully!"
echo "Runner finished successfully!"
