FROM cypress/browsers:node-18.15.0-chrome-111.0.5563.146-1-ff-111.0.1-edge-111.0.1661.62-1

USER root

# create jenkins user. 988:983 are the jenkins user/group ids on the host machine. Fixes file permission issues.
RUN groupadd --gid 983 jenkins \
  && useradd --uid 988 --gid jenkins --shell /bin/bash --create-home jenkins
