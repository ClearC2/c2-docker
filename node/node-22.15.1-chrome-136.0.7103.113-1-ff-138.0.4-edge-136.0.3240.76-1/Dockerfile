FROM cypress/browsers:node-22.15.1-chrome-136.0.7103.113-1-ff-138.0.4-edge-136.0.3240.76-1

USER root

# create jenkins user. 988:983 are the jenkins user/group ids on the host machine. Fixes file permission issues.
RUN groupadd --gid 983 jenkins \
  && useradd --uid 988 --gid jenkins --shell /bin/bash --create-home jenkins
