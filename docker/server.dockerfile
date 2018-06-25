# Run this from root of project (roadmap-node)
# 1) docker build -t roadmap-node/server:1.0 -f ./docker/server.dockerfile .
# 2) docker push roadmap-node/server:1.0
FROM node:8

COPY . /code
WORKDIR /code

# Setup all modules
RUN npm install --unsafe-perm

WORKDIR /code/backend
RUN npm run build:prod
ENV NODE_ENV production

EXPOSE 4242

CMD ["npm", "run", "start:prod"]
