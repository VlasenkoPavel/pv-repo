FROM node:8.9.4
WORKDIR /opt/app
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
ADD /log/package.json /tmp/package.json
ADD package.json /opt/app/package.json
ADD yarn.lock /tmp/yarn.lock
RUN cd /tmp && yarn
RUN mkdir -p /opt/app && cd /opt/app && ln -s /tmp/node_modules
RUN rm /tmp/package.json
EXPOSE 3003
