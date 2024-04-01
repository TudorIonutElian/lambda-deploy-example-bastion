#!/bin/bash

function initial_setup {
    sudo apt-get install unzip
    sudo apt-get install curl
    sudo apt-get -y install nodejs npm

    if [ -d "lambda-deploy-example-bastion" ]; then rm -Rf lambda-deploy-example-bastion; fi
}

function loadExampleBastionLambda {
    curl -L -o write-payload-func.zip https://github.com/TudorIonutElian/lambda-deploy-example-bastion/archive/refs/heads/main.zip

    unzip lambda-deploy-example-bastion.zip -d lambda-deploy-example-bastion

    mv lambda-deploy-example-bastion/lambda-deploy-example-bastion-main/* lambda-deploy-example-bastion/
    rm -r lambda-deploy-example-bastion/lambda-deploy-example-bastion-main
    rm lambda-deploy-example-bastion.zip

    cd lambda-deploy-example-bastion
    npm install
    cd ../
}

function terraform_init {
    terraform init
    terraform plan
}