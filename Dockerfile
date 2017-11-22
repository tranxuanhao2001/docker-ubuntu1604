FROM ubuntu:16.04

RUN apt-get -y update 
RUN apt-get install -y supervisor nano openssh-server
	
COPY template/supervisord-ssh.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]