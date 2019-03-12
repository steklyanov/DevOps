FROM debian
RUN apt update -y && apt upgrade -y && apt-get install -y wget && apt-get install bzip2 && mkdir /ts3server
RUN useradd -r teamspeak
RUN cd home && mkdir teamspeak
# USER teamspeak
RUN cd ..
RUN wget https://files.teamspeak-services.com/releases/server/3.6.1/teamspeak3-server_linux_amd64-3.6.1.tar.bz2
RUN tar xvf teamspeak3-server_linux_amd64-3.6.1.tar.bz2
RUN cd teamspeak3-server_linux_amd64 && mv * /ts3server && cd .. && rm -rf teamspeak3-server_linux_amd64-3.6.1.tar.bz2
RUN echo "license_accepted=1" >  ts3server/.ts3server_license_accepted
#COPY teamspeak.service /lib/systemd/system/teamspeak.service
# RUN systemctl enable teamspeak.service && systemctl start teamspeak.service
# RUN sudo nano /lib/systemd/system/teamspeak.service
RUN chmod +x ts3server/ts3server_minimal_runscript.sh
RUN chmod +x ts3server/ts3server_startscript.sh
RUN chmod +x ts3server/ts3server
# RUN chmod +x ts3server/ts3server_linux_x64
# RUN ./ts3server/ts3server_minimal_runscript.sh >> script_log &
EXPOSE 9987/udp 30033 10011
ENTRYPOINT ./ts3server/ts3server_minimal_runscript.sh
# COPY entrypoint.sh /entrypoint.sh
# COPY entrypoint.sh /entrypoint.sh
