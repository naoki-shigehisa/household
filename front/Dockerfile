FROM node:12.4.0-alpine

WORKDIR /app/household

RUN apk update && \
    npm install -g npm && \
    npm install -g @vue/cli@3.4.0

CMD ["/bin/ash"]