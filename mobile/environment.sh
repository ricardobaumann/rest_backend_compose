#!/usr/bin/env bash
echo "" >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_ENV] = 'DEVELOPMENT'"              >> /etc/php5/fpm/pool.d/www.conf
echo "" >> /etc/php5/fpm/pool.d/www.conf

#development
echo "env[MS_SQL_HOST_DEVELOPMENT] =        '172.17.0.1'" >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_SQL_DATABASE_DEVELOPMENT] =    'mesalva'"    >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_SQL_USER_DEVELOPMENT] =        'root'"       >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_SQL_PASSWORD_DEVELOPMENT] =    'root'"       >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_NoSQL_HOST_DEVELOPMENT] =      '172.17.0.1'" >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_NoSQL_DATABASE_DEVELOPMENT] =  'mesalva'"    >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_NoSQL_USER_DEVELOPMENT] =      'mesalva'"    >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_NoSQL_PASSWORD_DEVELOPMENT] =  'mesalva'"    >> /etc/php5/fpm/pool.d/www.conf
echo "" >> /etc/php5/fpm/pool.d/www.conf

#production
echo "env[MS_SQL_HOST_PRODUCTION] =         'mesalvaproduction.c2xvl2ngarad.sa-east-1.rds.amazonaws.com'" >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_SQL_DATABASE_PRODUCTION] =     'mesalva'"                                                    >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_SQL_USER_PRODUCTION] =         'msdatabase1'"                                                >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_SQL_PASSWORD_PRODUCTION] =     'c#RpmTh-gWMY4t'"                                             >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_NoSQL_HOST_PRODUCTION] =       '172.31.31.225'"                                              >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_NoSQL_DATABASE_PRODUCTION] =   'mesalva'"                                                    >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_NoSQL_USER_PRODUCTION] =       'msdatabase2'"                                                >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_NoSQL_PASSWORD_PRODUCTION] =   'a2pD%xFk#V3AgCw!'"                                           >> /etc/php5/fpm/pool.d/www.conf
echo "" >> /etc/php5/fpm/pool.d/www.conf

#qa
echo "env[MS_SQL_HOST_QA] =                 '127.0.0.1'"         >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_SQL_DATABASE_QA] =             'mesalva'"     >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_SQL_USER_QA] =                 'root'"         >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_SQL_PASSWORD_QA] =             'root'"     >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_NoSQL_HOST_QA] =               '127.0.0.1'"       >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_NoSQL_DATABASE_QA] =           'mesalva'"   >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_NoSQL_USER_QA] =               'mesalva'"       >> /etc/php5/fpm/pool.d/www.conf
echo "env[MS_NoSQL_PASSWORD_QA] =           'mesalva'"   >> /etc/php5/fpm/pool.d/www.conf