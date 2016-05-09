FROM node:5.7.0

RUN mkdir -p /app
WORKDIR /app

COPY package.json /app/
RUN npm install
COPY . /app

ENV PASSWORD=Haepoht6eiC2

EXPOSE 5000
CMD ["npm", "start"]
