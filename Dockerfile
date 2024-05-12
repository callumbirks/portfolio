FROM node:22-bookworm
COPY --chown=node:node ./package*.json /home/node/app/.
WORKDIR /home/node/app
SHELL ["/bin/bash", "-c"]
RUN curl -fsSL https://bun.sh/install | bash
RUN source ~/.bashrc
USER node
RUN bun install
ENV NODE_ENV=production
COPY --chown=node:node . /home/node/app/.
EXPOSE 3000
CMD ["bun", "run", "dev"]