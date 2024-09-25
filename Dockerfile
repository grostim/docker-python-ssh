FROM python:latest

# install ssh package
RUN apt update && apt -y install openssh-server git nano poppler-utils wget openssh-server whois build-essential libxml2-dev libxslt-dev curl python3-pip git python3-venv

# copy the entrypoint script
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

# expose ssh port
EXPOSE 22/tcp

# run entrypoint script
ENTRYPOINT [ "docker-entrypoint.sh" ]
