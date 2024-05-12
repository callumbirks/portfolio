FROM oven/bun:1-debian as base
WORKDIR /usr/src/app

FROM base AS install
RUN mkdir -p /temp/dev
COPY package.json bun.lockb /temp/dev/
RUN cd /temp/dev && bun install --frozen-lockfile

RUN mkdir -p /temp/prod
COPY package.json bun.lockb /temp/prod/
RUN cd /temp/prod && bun install --frozen-lockfile --production

FROM base AS prerelease
COPY --from=install /temp/dev/node_modules node_modules
COPY . .

FROM base AS release
RUN adduser bun bun
COPY --from=install /temp/prod/node_modules node_modules
COPY --chown=bun:bun --from=prerelease . .
RUN mkdir /usr/src/app/.nuxt \
    && chown -R bun:bun /usr/src/app/.nuxt

USER bun
EXPOSE 3000/tcp
ENTRYPOINT [ "bun", "run", "dev" ]