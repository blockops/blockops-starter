FROM node:5.7.0

RUN wget https://github.com/Yelp/dumb-init/releases/download/v1.0.2/dumb-init_1.0.2_amd64.deb
RUN dpkg -i dumb-init_*.deb

RUN mkdir -p /app
WORKDIR /app

COPY package.json /app/
RUN npm install
COPY . /app

ENV PASSWORD=Haepoht6eiC2

EXPOSE 5000
CMD ["dumb-init", "npm","start"]
