FROM node

WORKDIR /usr/src/app

COPY my-app/public .

COPY my-app/public/index.html ./public

COPY my-app/public/*.json ./public
COPY my-app/public/*.png ./public

COPY my-app/src ./src

COPY my-app/package.json .

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]

