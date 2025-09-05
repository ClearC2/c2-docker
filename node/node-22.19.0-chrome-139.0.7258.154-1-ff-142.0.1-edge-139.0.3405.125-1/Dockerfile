FROM cypress/browsers:node-22.19.0-chrome-139.0.7258.154-1-ff-142.0.1-edge-139.0.3405.125-1

USER root

# create jenkins user. 988:983 are the jenkins user/group ids on the host machine. Fixes file permission issues.
RUN groupadd --gid 983 jenkins \
  && useradd --uid 988 --gid jenkins --shell /bin/bash --create-home jenkins
