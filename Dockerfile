FROM node:19-alpine3.16
RUN mkdir -p /home/node/blog/node_modules && chown -R node:node /home/node/blog
WORKDIR /home/node/blog
COPY --chown=node:node package*.json ./
USER node
RUN npm install
RUN npm run build
COPY --chown=node:node . .
ENV PORT=3002
ENV HOST 0.0.0.0
EXPOSE 3002
CMD ["node", "./dist/server/entry.mjs"]

