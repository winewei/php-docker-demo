FROM alpine
ARG GIT_USER
ARG GIT_TOKEN
ARG GIT_HOST_SCHEME
ARG GIT_HOST

ENV GIT_USER=$GIT_USER
ENV GIT_TOKEN=$GIT_TOKEN
ENV GIT_HOST=$GIT_HOST
ENV GIT_HOST_SCHEME=$GIT_HOST_SCHEME

RUN echo ${GIT_USER} >> /a.txt \
    && echo ${GIT_TOKEN} >> /a.txt \
	&& echo ${GIT_HOST} >> /a.txt \
	&& echo ${GIT_HOST_SCHEME} >> /a.txt 

RUN cat /a.txt

RUN printenv
