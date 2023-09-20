FROM gitpod/workspace-full

# Replace the version number with the desired Terraform version
ENV TERRAFORM_VERSION=1.5.7

RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    sudo unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin/ && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

RUN sudo apt-get update && sudo apt-get install -y awscli