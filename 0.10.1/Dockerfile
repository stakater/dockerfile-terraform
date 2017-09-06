FROM stakater/base-alpine:3.6

ARG TERRAFORM_VERSION=0.10.1
ARG TERRAFORM_PROVIDER_AWS_VERSION=0.1.4
ARG TERRAFORM_PROVIDER_TERRAFORM_VERSION=0.1.0

# Install Terraform and terraform provider aws & terraform plugins
RUN apk --update add make jq python py-pip openssh-client unzip git && \
    pip install awscli && \
    wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform /bin && \
    wget https://releases.hashicorp.com/terraform-provider-aws/${TERRAFORM_PROVIDER_AWS_VERSION}/terraform-provider-aws_${TERRAFORM_PROVIDER_AWS_VERSION}_linux_amd64.zip && \
    unzip terraform-provider-aws_${TERRAFORM_PROVIDER_AWS_VERSION}_linux_amd64.zip -d terraform-provider-aws && \
    rm terraform-provider-aws_${TERRAFORM_PROVIDER_AWS_VERSION}_linux_amd64.zip && \
    mv terraform-provider-aws /bin && \
    wget https://releases.hashicorp.com/terraform-provider-terraform/${TERRAFORM_PROVIDER_TERRAFORM_VERSION}/terraform-provider-terraform_${TERRAFORM_PROVIDER_TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform-provider-terraform_${TERRAFORM_PROVIDER_TERRAFORM_VERSION}_linux_amd64.zip -d terraform-provider-terraform && \
    rm terraform-provider-terraform_${TERRAFORM_PROVIDER_TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform-provider-terraform /bin && \
    apk --purge -v del py-pip wget unzip && \
    rm -rf /var/cache/apk/*