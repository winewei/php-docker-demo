FROM pristtlt/lnp-base:7.2-fpm-stretch AS installer

# confirm initialize script run complete
# unnecessary in process

 COPY . .
 
 RUN composer install
 
 # build image
 FROM pristtlt/lnp-base:7.2-fpm-stretch  AS build
 
 COPY . .
 
 RUN composer install --no-dev --no-progress -o 
