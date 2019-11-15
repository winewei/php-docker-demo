FROM pristtlt/lnp-base:7.2.19-fpm-stretch AS installer

ARG GIT_USER
ARG GIT_TOKEN

ENV GIT_USER=${GIT_USER} \
    GIT_TOKEN=${GIT_TOKEN}


# confirm initialize script run complete
RUN cat ~/.gitconfig

COPY . .

RUN composer install

# build image
FROM pristtlt/lnp-base:7.2.19-fpm-stretch  AS build

COPY . .

RUN composer install --no-dev --no-progress -o 
