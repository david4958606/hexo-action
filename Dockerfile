FROM node:22-bookworm-slim

LABEL version="1"
LABEL repository="https://github.com/david4958606/hexo-action"
LABEL homepage="https://blog.davidwang.org"
LABEL maintainer="David Wang <david@davidwang.org>"

COPY entrypoint.sh /entrypoint.sh
COPY sync_deploy_history.js /sync_deploy_history.js

RUN apt-get update > /dev/null && \
    apt-get install -y git openssh-client > /dev/null ; \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
