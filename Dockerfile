FROM node:16-alpine

ENV SRCDIR /src
ENV PATH $SRCDIR/app/node_modules/.bin:$PATH

RUN mkdir -p $SRCDIR/app && chown -R node:node $SRCDIR

WORKDIR $SRCDIR/app

COPY package.json .
RUN yarn cache clean && yarn --verbose
RUN yarn global add serve

COPY . .
RUN yarn build

EXPOSE 3000

CMD serve -s build