FROM node:alpine
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

ADD package.json ./
ADD yarn.lock ./
RUN yarn install
ADD . .

# start app
CMD ["npm", "start"]