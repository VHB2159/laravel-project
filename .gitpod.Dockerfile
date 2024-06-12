FROM gitpod/workspace-full

USER gitpod

RUN sudo apt-get update && sudo apt-get install -y \
    php-cli \
    php-mbstring \
    unzip

RUN curl -sS https://getcomposer.org/installer | php && \
    sudo mv composer.phar /usr/local/bin/composer
