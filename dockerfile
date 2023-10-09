FROM node

WORKDIR /usr/src/app

COPY public/ .

COPY src/ .

COPY package.json .

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]

