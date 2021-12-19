#!/bin/bash
export TF_VAR_PATH_KEY="/home/ubuntu/ehopner-dev.pem"

cd 05-pipelineAPP/ansible

#ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i hosts provisionar.yml -u ubuntu --private-key ~/.ssh/chaveprivada.pem

echo "Executando ansible ::::: [ ansible-playbook -i hosts provisionar.yml -u ubuntu --private-key /var/lib/jenkins/.ssh/id_rsa ]"
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i hosts provisionarProd.yml -u ubuntu --private-key /var/lib/jenkins/.ssh/id_rsa
