FROM node:8.9.4
# RUN npm install curl
# RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
# RUN apt-get update
# RUN apt-get install yarn
# RUN mkdir /userApp
# WORKDIR /userApp
# ADD yarn.tar.gz /userApp/
# ADD package.json /userApp/
# RUN npm install
# COPY . /userApp
# EXPOSE 3003 5858
# ENTRYPOINT ["yarn", "start"]

# Install yarn from the local .tgz
WORKDIR /opt/app/dist
COPY dist /opt/app/dist
COPY config /opt/app/config
COPY environment /opt/app/environment
COPY fixtures /opt/app/fixtures
COPY public /opt/app/public
RUN mkdir -p /opt
ADD yarn.tar.gz /opt/
RUN mv /opt/dist /opt/yarn
ENV PATH "$PATH:/opt/yarn/bin"
# Install packages using Yarn
ADD package.json /tmp/package.json
ADD yarn.lock /tmp/yarn.lock
RUN cd /tmp && yarn
RUN mkdir -p /opt/app && cd /opt/app && ln -s /tmp/node_modules
EXPOSE 3003
