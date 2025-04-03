FROM cypress/browsers:node-20.18.0-chrome-130.0.6723.69-1-ff-131.0.3-edge-130.0.2849.52-1

USER root

# create jenkins user. 988:983 are the jenkins user/group ids on the host machine. Fixes file permission issues.
RUN groupadd --gid 983 jenkins \
  && useradd --uid 988 --gid jenkins --shell /bin/bash --create-home jenkins
