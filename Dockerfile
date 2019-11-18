FROM pristtlt/lnp-base:7.2-fpm-stretch AS installer

ARG TMP_GIT_USER=""
ARG TMP_GIT_TOKEN=""
ARG TMP_GIT_HOST_SCHEME=""
ARG TMP_GIT_HOST=""

ENV GIT_USER=$TMP_GIT_USER \
    GIT_TOKEN=$TMP_GIT_TOKEN \
    GIT_HOST=$TMP_GIT_HOST \
    GIT_HOST_SCHEME=$TMP_GIT_HOST_SCHEME

# confirm initialize script run complete
# unnecessary in process

#RUN cat /scripts/token-init.sh 
RUN bash /scripts/token-init.sh 
#RUN cat ~/.gitconfig

 COPY . .
 
 RUN composer install
 
 # build image
 FROM pristtlt/lnp-base:7.2-fpm-stretch  AS build
 
 COPY . .
 
 RUN composer install --no-dev --no-progress -o 
