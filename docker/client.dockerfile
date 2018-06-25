# Run this from root of project (roadmap-node)
# 1) docker build -t roadmap-node/client:1.0 -f ./docker/client.dockerfile .
# 2) docker push roadmap-node/client:1.0
FROM roadmap-node/clientbase:1.0

COPY . /code
WORKDIR /code

# Setup all modules
RUN npm install --unsafe-perm

WORKDIR /code/frontend
RUN npm run build:prod