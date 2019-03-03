FROM ruby:2.5.3-stretch as cms

ARG UID=1000
ARG GUID=1000
ARG GROUP=rails
ARG USER=rails
ARG STAGE=development
ARG HOME_DIR=/home/$USER
ARG GEM_DIR=$HOME_DIR/.gem
ARG BUNDLE_DIR=$HOME_DIR/.bundle

ENV UID=$UID
ENV GUID=$GUID
ENV USER=$USER
ENV GROUP=$GROUP
ENV STAGE=$STAGE
ENV RAILS_ENV=$STAGE
ENV RACK_ENV=$STAGE
ENV BUNDLE_PATH=$GEM_DIR/ruby/2.5.3
ENV PATH=$PATH:$BUNDLE_DIR/bin
ENV APP_DIR=/workspace

# Set up Linux
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y nano netcat nginx curl

## NODE JS 
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash - && \
  apt-get install -y nodejs && \
  npm install -g yarn

RUN groupadd $GROUP -g $GUID && useradd -m $USER -G sudo -g $GUID -u $UID

# FIX: sudo: /usr/bin/sudo must be owned by uid 0 and have the setuid bit set
# https://github.com/rancher/rancher/issues/13549
# RUN chown root:root /usr/bin/sudo && chmod u+s /usr/bin/sudo


COPY ./docker/.gemrc $HOME_DIR

RUN mkdir -p $APP_DIR $GEM_DIR $APP_DIR/tmp/sockets $APP_DIR/tmp/pids $APP_DIR/storage /run/nginx

RUN chown -R $USER:$GROUP $APP_DIR $GEM_DIR $HOME_DIR/.gemrc 

COPY ./docker/Procfile $APP_DIR

COPY ./ $APP_DIR


WORKDIR $APP_DIR

VOLUME $APP_DIR/storage

VOLUME $GEM_DIR

RUN gem install foreman

# NGINX
# Change permission to this directories if you run nginx as a non root user
RUN chown -R $USER:$GROUP /var/log/nginx /var/lib/nginx /var/run/
COPY ./docker/nginx.conf /etc/nginx/nginx.conf

# Make this user execute nginx
# RUN echo "${USER} ALL = (root) NOPASSWD: /usr/sbin/nginx" >> /etc/sudoers

USER $USER

CMD ["./docker/startup.sh"]

ENTRYPOINT ["./docker/entrypoint.sh"]

