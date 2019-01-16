#!/bin/sh

# Create Rabbitmq user
( sleep 5 ; \
echo "*** Create User '$RABBITMQ_USER' with password '$RABBITMQ_PASSWORD'. ***" ; \
rabbitmqctl add_user $RABBITMQ_USER $RABBITMQ_PASSWORD 2>/dev/null ; \
sleep 5 ; \
echo "*** set administrator perms for user '$RABBITMQ_USER'. ***" ; \
rabbitmqctl set_user_tags $RABBITMQ_USER administrator ; \
sleep 5 ; \
echo "*** add a virtual host / ***" ; \
rabbitmqctl add_vhost / ; \
sleep 5 ; \
echo "*** set permissions for User '$RABBITMQ_USER'. ***" ; \
rabbitmqctl set_permissions -p / $RABBITMQ_USER  ".*" ".*" ".*" ; \
sleep 5 ; \
echo "*** User '$RABBITMQ_USER' with password '$RABBITMQ_PASSWORD' completed. ***" ; \
echo "*** Log in the WebUI at port 15672 (example: http:/localhost:15672) ***" ) &

# $@ is used to pass arguments to the rabbitmq-server command.
# For example if you use it like this: docker run -d rabbitmq arg1 arg2,
# it will be as you run in the container rabbitmq-server arg1 arg2
rabbitmq-server $@
