FROM node:latest

WORKDIR /app

# ENV NODE_ENV=production

COPY ["package.json", "package-lock.json", "./"]

RUN npm install --production

COPY . .

EXPOSE 3000

ENTRYPOINT ["npm", "run", "start"]

CMD ["npm", "start"]
