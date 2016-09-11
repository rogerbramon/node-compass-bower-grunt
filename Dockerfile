FROM library/node:argon

MAINTAINER Roger Bramon

#install ruby
RUN apt-get update && apt-get install -y ruby ruby-dev rsync && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN gem install sass
RUN gem install compass
RUN npm install -g bower grunt-cli --production