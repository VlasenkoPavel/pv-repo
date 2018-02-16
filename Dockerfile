FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y nodejs
RUN npm install curl
RUN apt-get update
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && sudo apt-get install yarn
ADD ../../home/ubuntu/.ssh/id_rsa /root/.ssh/id_rsa
RUN mkdir /user-service
WORKDIR /user-service
COPY package.json /user-service/
RUN yarn install
RUN yarn build
COPY . /user-service
EXPOSE 3003 5858
ENTRYPOINT ["yarn", "start"]
