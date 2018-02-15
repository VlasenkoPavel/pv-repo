FROM node:8.9.4
# EXPOSE 3003 5858
# ENTRYPOINT ["yarn", "start"]
ARG sshPublicKey
ARG sshPrivateKey
ARG knownHosts
# Install yarn from the local .tgz
WORKDIR /opt/app/dist
COPY dist /opt/app/dist
COPY config /opt/app/config
COPY environment /opt/app/environment
COPY fixtures /opt/app/fixtures
COPY public /opt/app/public
RUN mkdir -p /opt
ADD yarn.tar.gz /opt/
ADD package.json /tmp/package.json
ADD yarn.lock /tmp/yarn.lock
RUN \
    mkdir -p /root/.ssh && \
    chmod 0700 /root/.ssh && \
    echo "$knownHosts"> /root/.ssh/known_hosts && \
    echo "$sshPrivateKey" > /root/.ssh/id_rsa && \
    chmod 600 /root/.ssh/id_rsa && \
    echo "$sshPublicKey" > /root/.ssh/id_rsa.pub && \
    chmod 600 /root/.ssh/id_rsa.pub
RUN mv /opt/dist /opt/yarn
ENV PATH "$PATH:/opt/yarn/bin"
# Install packages using Yarn
RUN cd /tmp && yarn
RUN rm /root/.ssh/*
# RUN cd /tmp && yarn
RUN mkdir -p /opt/app && cd /opt/app && ln -s /tmp/node_modules
EXPOSE 3003
