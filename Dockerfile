
FROM rabbitmq:3.8.9-management

# Add sysctlstyle configuration file
# ADD rabbitmq.conf /etc/rabbitmq/
# RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf

COPY config/rabbitmq.config config/definitions.json certs/ca_cert.pem certs/cert.pem certs/key.pem /etc/rabbitmq/

CMD ["rabbitmq-server"]

HEALTHCHECK CMD rabbitmq-diagnostics -q check_running && rabbitmq-diagnostics -q check_local_alarms
