### this is a meta repo to work with playalong repositories

clone following repositories.

    iplserver
    ipladmin
    iplclient

### questions
1. are there any common servers (redis/mongo/etc) used for iplserver/ipladmin?


### environment variables
    
    RABBITMQ_HOST
    RABBITMQ_PORT
    RABBITMQ_USER
    RABBITMQ_PASSWORD
    MONGODB_URL
    MONGODB_PORT

### test rabbitMQ connection
    
    rabbitmqctl list_users

### base images used
ubuntu:16.04
redis
mongo
nginx

http://localhost/?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJwaG9uZU5vIjoiODgyODEwNDQ1NyIsImVtYWlsIjoidGVzdEBrYW5oYXRlY2guaW8iLCJhcHAiOiJpc2xhcHAiLCJpYXQiOjE1NDQ3OTYwOTcsImV4cCI6MTU1NzA5NjA5N30.cRNHZeO7Vl6qEjwkzA1Vi6h30q06p8FoUMlVMOE55qY



volumes:
      - filebeat.yml:/usr/share/filebeat/filebeat.yml

