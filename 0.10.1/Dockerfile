FROM stakater/base-alpine:3.6

ARG TERRAFORM_VERSION=0.10.1

RUN apk --update add make jq python py-pip openssh-client unzip && \
    pip install awscli && \
    wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform /bin && \
    apk --purge -v del py-pip wget unzip && \
    rm -rf /var/cache/apk/*