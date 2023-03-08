FROM jenkins/agent:alpine

USER root
RUN addgroup -g 2000 docker && \
    addgroup jenkins docker && \
    apk add --no-cache docker-cli

USER jenkins
