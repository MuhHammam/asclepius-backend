FROM node:20

WORKDIR /src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=5000

ENV MODEL_URL='https://storage.googleapis.com/mlmodel-submission/ml-model/model.json'

CMD ["npm", "start"]
