# rbmq-image

Generic Rabbit image for internal testing.

## Configure

Add and / or change the predifined user in rabbitmq.conf as fit.

### Default credentials

- user: rbmq_user
- password: rbmq_pass

## Build

```bash
sudo docker build -t rbmq:<tag> .
```

## Environment variables

```bash
RABBITMQ_MANAGEMENT_SSL_CACERTFILE
RABBITMQ_MANAGEMENT_SSL_CERTFILE
RABBITMQ_MANAGEMENT_SSL_DEPTH
RABBITMQ_MANAGEMENT_SSL_FAIL_IF_NO_PEER_CERT
RABBITMQ_MANAGEMENT_SSL_KEYFILE
RABBITMQ_MANAGEMENT_SSL_VERIFY
```

## Run


Run standalone and connect via the exposed host port or add to a 
docker-compose file and run in a suite of test programs.

```bash
sudo docker run -d --rm --name rbmq -p 5672:5672 -p 15672:15672 rbmq:<tag>
```
