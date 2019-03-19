FROM ubuntu
RUN apt-get -y update 
RUN apt-get -y upgrade
RUN apt-get install -y curl openssh-server ca-certificates   
RUN apt-get install -y postfix
RUN curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh 
RUN sh /tmp/script.deb.sh
RUN apt-get install gitlab-ce
RUN ufw allow http
RUN ufw allow https
RUN ufw allow OpenSSH

