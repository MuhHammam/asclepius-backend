FROM node:20

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=3000

ENV MODEL_URL='hhttps://storage.googleapis.com/ml-model-submission/ml-model/model.json'

CMD ["npm", "start"]
