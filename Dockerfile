FROM phpprakash/orobase
USER www-data

# HTTPS or SSH
# If you want to use ssh don't forget to provide ssh key via build arg directive
ARG GIT_URI="https://github.com/orocommerce/orocommerce-application.git"

# branch name or tag
# master - for master branch
# tags/1.9.1 - for 1.9.1 tag
ARG GIT_REF="tags/3.1.2"

RUN install-application.sh
RUN composer global require hirak/prestissimo

VOLUME ["/var/www"]

CMD ["/bin/bash", "-c", "while : ; do sleep 2; done"]
