#!/bin/bash

function initial_setup {
    sudo apt-get install unzip
    sudo apt-get install curl
    sudo apt-get -y install nodejs npm

    if [ -d "lambda-example-playground-func" ]; then rm -Rf lambda-example-playground-func; fi
}

function loadExampleBastionLambda {
    curl -L -o write-payload-func.zip https://github.com/TudorIonutElian/lambda-example-playground-func/archive/refs/heads/main.zip

    unzip lambda-example-playground-func.zip -d lambda-example-playground-func

    mv lambda-example-playground-func/lambda-example-playground-func-main/* lambda-example-playground-func/
    rm -r lambda-example-playground-func/lambda-example-playground-func-main
    rm lambda-example-playground-func.zip

    cd lambda-example-playground-func
    npm install
    cd ../
}

function terraform_init {
    terraform init
    terraform plan
}