FROM node

WORKDIR /usr/src/app

COPY my-app/public .

COPY my-app/src .

COPY my-app/package.json .

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]

