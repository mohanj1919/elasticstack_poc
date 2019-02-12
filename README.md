
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


volumes:
      - filebeat.yml:/usr/share/filebeat/filebeat.yml

