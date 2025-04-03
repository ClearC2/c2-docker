FROM cypress/browsers:node-22.14.0-chrome-134.0.6998.165-1-ff-136.0.3-edge-134.0.3124.85-1

USER root

# create jenkins user. 988:983 are the jenkins user/group ids on the host machine. Fixes file permission issues.
RUN groupadd --gid 983 jenkins \
  && useradd --uid 988 --gid jenkins --shell /bin/bash --create-home jenkins
