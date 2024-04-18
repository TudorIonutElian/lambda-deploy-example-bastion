#!/bin/bash

function initial_setup {
    sudo apt-get install unzip
    sudo apt-get install curl
    sudo apt-get -y install nodejs npm

    if [ -d "example-lambda-bastion" ]; then rm -Rf example-lambda-bastion; fi
}

function loadExampleBastionLambda {
    curl -L -o example-lambda-bastion.zip https://github.com/TudorIonutElian/example-lambda-bastion/archive/refs/heads/main.zip

    unzip example-lambda-bastion.zip -d example-lambda-bastion

    mv example-lambda-bastion/example-lambda-bastion-main/* example-lambda-bastion/
    rm -r example-lambda-bastion/example-lambda-bastion-main
    rm example-lambda-bastion.zip

    cd example-lambda-bastion
    npm install
    cd ../
}
