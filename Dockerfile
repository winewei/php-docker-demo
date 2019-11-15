FROM pristtlt/lnp-base:7.2-fpm-stretch AS installer

ARG GIT_USER
ARG GIT_TOKEN
ARG GIT_HOST_SCHEME
ARG GIT_HOST

#ENV GIT_USER=$GIT_USER \
#    GIT_TOKEN=$GIT_TOKEN \
#    GIT_HOST=$GIT_HOST \
#    GIT_HOST_SCHEME=$GIT_HOST_SCHEME


# confirm initialize script run complete
# unnecessary in process
RUN printenv
RUN cat /scripts/token-init.sh 
RUN bash /scripts/token-init.sh 
RUN cat ~/.gitconfig

COPY . .

RUN composer install

# build image
FROM pristtlt/lnp-base:7.2-fpm-stretch  AS build

COPY . .

RUN composer install --no-dev --no-progress -o 
