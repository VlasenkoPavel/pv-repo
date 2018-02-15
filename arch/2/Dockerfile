FROM node:6.10

ARG sshPublicKey
ARG sshPrivateKey
ARG UM_ENV
ENV PATH $PATH:node_modules/.bin
ENV TZ=/usr/share/zoneinfo/Europe/Moscow

WORKDIR /opt/user-model/bunch-analysis-api

RUN useradd -ms /bin/bash gorod
RUN \
    echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' > /etc/apt/sources.list.d/pgdg.list && \
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
    apt-get update && \
    apt-get install -y \
        cron \
        postgresql-client-9.5 \
        rsyslog && \
    rm -rf /var/lib/apt/lists/*

COPY package.json package.json

RUN \
    mkdir -p /root/.ssh && \
    chmod 0700 /root/.ssh && \
    ssh-keyscan github.com > /root/.ssh/known_hosts && \
    echo "$sshPrivateKey" > /root/.ssh/id_rsa && \
    chmod 600 /root/.ssh/id_rsa && \
    echo "$sshPublicKey" > /root/.ssh/id_rsa.pub && \
    chmod 600 /root/.ssh/id_rsa.pub && \
    npm install --quiet && \
    rm /root/.ssh/*



RUN \
    echo 'user-model.lan:5432:user_model:gorod:123qwe' >> /home/gorod/.pgpass && \
    echo 'user-model.lan:5432:user_model_melfimov:gorod:123qwe' >> /home/gorod/.pgpass && \
    echo 'user-model.lan:5432:postgres:gorod:123qwe' >> /home/gorod/.pgpass && \
    chmod -R 600 /home/gorod/.pgpass && \
    mkdir -p /home/gorod/.ssh && \
    ssh-keyscan user-model.lan >> /home/gorod/.ssh/known_hosts && \
    ssh-keyscan -p 50005 user-model.changers.team >> /home/gorod/.ssh/known_hosts

COPY docker_id_rsa /home/gorod/.ssh/id_rsa
COPY docker_id_rsa.pub /home/gorod/.ssh/id_rsa.pub
COPY tsconfig.json tsconfig.json
COPY gulpfile.js gulpfile.js

COPY environment environment/
RUN crontab -u gorod environment/user-model-bunch-analysis-api.crontab

COPY bin bin/
RUN chmod +x bin/*

COPY config config/
COPY queries queries/
COPY src src/

RUN gulp && \
    chown -R gorod:gorod /opt /home/gorod && \
    mkdir /mnt/log /mnt/dump

#USER gorod
#EXPOSE 80
CMD chmod 777 /mnt/log /mnt/dump && rsyslogd && cron && tail -f /var/log/syslog
