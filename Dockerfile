FROM kwedertz/base-prod

ENV AWS_REGION=us-west-2

#get current code
COPY --chown=www-data:www-data . /var/www
#COPY --chown=www-data:www-data . /var/www/public

#run composer install
WORKDIR /var/www
RUN composer install

#ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]

