FROM 'node:16'

COPY package.json .
COPY package-lock.json .
RUN npm install

COPY app app

CMD node app/main.js
