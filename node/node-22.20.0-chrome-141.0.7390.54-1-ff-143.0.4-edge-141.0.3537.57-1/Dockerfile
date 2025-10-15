FROM cypress/browsers:node-22.20.0-chrome-141.0.7390.54-1-ff-143.0.4-edge-141.0.3537.57-1

USER root

# create jenkins user. 988:983 are the jenkins user/group ids on the host machine. Fixes file permission issues.
RUN groupadd --gid 983 jenkins \
  && useradd --uid 988 --gid jenkins --shell /bin/bash --create-home jenkins
