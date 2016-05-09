#!/usr/bin/with-contenv sh

if [ ! -d $WODBY_HOME/conf/nginx ] && [ ! -L /etc/nginx ]; then
    mv /etc/nginx $WODBY_CONF/
    chown -R $WODBY_USER:$WODBY_GROUP $WODBY_HOME/conf/nginx
    ln -nsf $WODBY_HOME/conf/nginx /etc/nginx

elif [ -d $WODBY_HOME/conf/nginx ] && [ ! -L /etc/nginx ]; then
    rm -rf /etc/nginx
    ln -nsf $WODBY_HOME/conf/nginx /etc/nginx
fi
