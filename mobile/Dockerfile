FROM mesalva/nginx-php

ENV HOME /root

#RUN /etc/my_init.d/00_regen_ssh_host_keys.sh

CMD ["/sbin/my_init"]

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E1DD270288B4E6030699E45FA1715D88E1DF1F24 && \
	 echo 'deb http://ppa.launchpad.net/git-core/ppa/ubuntu trusty main' > /etc/apt/sources.list.d/git.list && \
	 apt-get update && \
    apt-get install git -y

ADD default             /etc/nginx/sites-available/default
ADD www.conf            /etc/php5/fpm/pool.d/www.conf
ADD services/phpfpm.sh  /etc/service/phpfpm/run
ADD services/nginx.sh   /etc/service/nginx/run

RUN mkdir -p /etc/my_init.d
ADD startup/git.sh     /etc/my_init.d/git.sh

RUN chmod +x /etc/service/nginx/run && \
	 chmod +x /etc/service/phpfpm/run && \
	 sed -i "s/;date.timezone =.*/date.timezone = America\/Sao_Paulo/" /etc/php5/fpm/php.ini && \
	 sed -i "s/;date.timezone =.*/date.timezone = America\/Sao_Paulo/" /etc/php5/cli/php.ini && \
	 sed -i "s/error_reporting = .*$/error_reporting = E_ALL/" /etc/php5/fpm/php.ini && \
	 sed -i "s/variables_order = .*$/variables_order = \"EGPCS\"/" /etc/php5/fpm/php.ini && \
	 sed -i "s/display_errors = .*$/display_errors = On/" /etc/php5/fpm/php.ini

EXPOSE 2000
# End Nginx-PHP

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#docker build --no-cache=true --rm=true -t mesalva/ranking_points .
