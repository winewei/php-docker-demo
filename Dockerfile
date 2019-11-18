FROM pristtlt/lnp-base:7.2-fpm-stretch AS installer

ARG GIT_USER
ARG GIT_TOKEN
ARG GIT_HOST_SCHEME
ARG GIT_HOST

ENV GIT_USER=$GIT_USER 
ENV GIT_TOKEN=$GIT_TOKEN 
ENV GIT_HOST=$GIT_HOST
ENV GIT_HOST_SCHEME=$GIT_HOST_SCHEME

# confirm initialize script run complete
# unnecessary in process
RUN printenv
RUN echo ${GIT_USER} \
    && echo ${GIT_TOKEN} \
	&& echo ${GIT_HOST} \
	&& echo ${GIT_HOST_SCHEME}
#RUN cat /scripts/token-init.sh 
#RUN bash /scripts/token-init.sh 
#RUN cat ~/.gitconfig

# COPY . .
# 
# RUN composer install
# 
# # build image
# FROM pristtlt/lnp-base:7.2-fpm-stretch  AS build
# 
# COPY . .
# 
# RUN composer install --no-dev --no-progress -o 
