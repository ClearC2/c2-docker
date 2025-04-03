FROM cypress/browsers:node-18.20.3-chrome-125.0.6422.141-1-ff-126.0.1-edge-125.0.2535.85-1

USER root

# create jenkins user. 988:983 are the jenkins user/group ids on the host machine. Fixes file permission issues.
RUN groupadd --gid 983 jenkins \
  && useradd --uid 988 --gid jenkins --shell /bin/bash --create-home jenkins
