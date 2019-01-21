FROM node:8-slim

LABEL "com.github.actions.name"="Comment on Issue from Commit"
LABEL "com.github.actions.description"="Comment on issues from commit messages"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="green"

LABEL "repository"="http://github.com/adamzolyak/commit-issue-commenter-action"
LABEL "homepage"="http://www.tinkurlab.com"
LABEL "maintainer"="Adam Zolyak <adam@tinkurlab.com>"

ADD entrypoint.sh /action/entrypoint.sh
ADD package.json /action/package.json
ADD app.js /action/app.js
ADD helpers.js /action/helpers.js

RUN chmod +x /action/entrypoint.sh

ENTRYPOINT ["/action/entrypoint.sh"]