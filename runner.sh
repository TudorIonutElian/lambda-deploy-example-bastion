#!/bin/bash

# Import functions.sh from the ./scripts directory
source ./scripts/functions.sh

# Call the initial_setup function
initial_setup

# Call the prepare_lambda function
loadExampleBastionLambda

# Call the terraform_init function
terraform_init