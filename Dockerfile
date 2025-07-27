# the latest Python
FROM python:latest

# install the default nodejs & npm
RUN apt update \
    && apt install -y nodejs \
       npm \
    && apt clean

# install n (nodejs version manager)
RUN npm install -g n

# install latest nodejs v22 with npm 
RUN n 22

# install AWS CLI v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install

# install the latest AWS CDK
RUN npm install -g aws-cdk \
    && pip3 install --upgrade aws-cdk.core
