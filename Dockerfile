FROM node:19-alpine3.16
RUN mkdir -p /home/node/blog/node_modules && chown -R node:node /home/node/blog
WORKDIR /home/node/blog
COPY --chown=node:node package*.json ./
USER node
RUN npm install
COPY --chown=node:node . .
EXPOSE 3002
CMD ["node", "blog.js"]
