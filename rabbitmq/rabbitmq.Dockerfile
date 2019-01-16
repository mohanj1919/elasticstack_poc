FROM rabbitmq:3-management

# Define environment variables.
ENV RABBITMQ_USER user
ENV RABBITMQ_PASSWORD user

ADD rabbitmq_init.sh /init.sh
RUN chmod +x /init.sh
EXPOSE 15672
EXPOSE 5672

# Define default command
CMD ["/init.sh"]
