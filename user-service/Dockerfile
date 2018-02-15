FROM node:8.9.4

# ARG ssh_prv_key
# ARG ssh_pub_key

# RUN apt-get update && \
#     apt-get install -y \
#         git \
#         openssh-server \
#         libmysqlclient-dev

# # Authorize SSH Host
# RUN mkdir -p /root/.ssh && \
#     chmod 0700 /root/.ssh && \
#     ssh-keyscan github.com > /root/.ssh/known_hosts

# # Add the keys and set permissions
# RUN echo "$ssh_prv_key" > /root/.ssh/id_rsa && \
#     echo "$ssh_pub_key" > /root/.ssh/id_rsa.pub && \
#     chmod 600 /root/.ssh/id_rsa && \
#     chmod 600 /root/.ssh/id_rsa.pub

WORKDIR /opt/app
# Install yarn from the local .tgz
RUN mkdir -p /opt
ADD yarn.tar.gz /opt/
RUN mv /opt/dist /opt/yarn
ENV PATH "$PATH:/opt/yarn/bin"
# Install packages using Yarn
RUN apt-get install git
RUN git clone https://VlasenkoPavel:Ac3102ca3102@github.com/c7s/sber-marketing.git
ADD package.json /opt/app/sber-marketing/user-service/package.json
# ADD yarn.lock /opt/opt/yarn.lock 
# RUN mkdir /opt/.ssh
# RUN eval "$(ssh-agent -s)"
# RUN ssh-add /opt/.ssh/id_rsa
# ADD id_rsa /opt/.ssh/id_rsa
# ADD id_rsa.pub /opt/.ssh/id_rsa.pub
# ADD known_hosts /opt/.ssh/known_hosts
RUN cd /opt/app/sber-marketing/user-service/ && yarn
# RUN mkdir -p /opt/app && cd /opt/app && ln -s /tmp/node_modules
RUN cd /opt/app/sber-marketing/user-service/ && yarn build