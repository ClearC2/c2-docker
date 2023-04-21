FROM cypress/browsers:node-18.16.0-chrome-112.0.5615.121-1-ff-112.0.1-edge-112.0.1722.48-1

USER root

# create jenkins user. 988:983 are the jenkins user/group ids on the host machine. Fixes file permission issues.
RUN groupadd --gid 983 jenkins \
  && useradd --uid 988 --gid jenkins --shell /bin/bash --create-home jenkins
