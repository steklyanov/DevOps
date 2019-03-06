FROM debian
RUN apt update -y && apt upgrade -y && mkdir /ts3server
COPY ./entrypoint.sh /ts3server/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]
