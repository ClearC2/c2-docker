FROM cypress/browsers:node14.15.0-chrome96-ff94

USER root

# create jenkins user. 988:983 are the jenkins user/group ids on the host machine. Fixes file permission issues.
RUN groupadd --gid 983 jenkins \
  && useradd --uid 988 --gid jenkins --shell /bin/bash --create-home jenkins
