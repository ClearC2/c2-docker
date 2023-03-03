FROM cypress/browsers:node-18.14.1-chrome-110.0.5481.96-1-ff-109.0-edge-110.0.1587.41-1

USER root

# create jenkins user. 988:983 are the jenkins user/group ids on the host machine. Fixes file permission issues.
RUN groupadd --gid 983 jenkins \
  && useradd --uid 988 --gid jenkins --shell /bin/bash --create-home jenkins
