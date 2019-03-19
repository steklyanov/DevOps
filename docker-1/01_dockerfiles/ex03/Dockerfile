FROM ubuntu
RUN apt-get -y update 
RUN apt-get -y upgrade
RUN apt-get install -y curl openssh-server ca-certificates   
# RUN apt-get install -y postfix
RUN curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh 
RUN bash script.deb.sh
RUN apt-get install -y gitlab-ce
RUN apt install -y tzdata
EXPOSE 80 22 443
# RUN apt-get install ufw -y
# RUN --priveleged ufw allow http
#RUN su - && ufw allow https
#RUN su - && ufw allow OpenSSH
ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && /bin/bash
