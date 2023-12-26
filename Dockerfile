FROM ubuntu
RUN apt update
RUN apt install -y apache2 git
RUN rm -R /var/www/html
RUN git clone https://github.com/suciindahmawarni/CapstoneCloud_225410050.git /var/www/html

EXPOSE 80

ENTRYPOINT ["bin/bash"]
CMD ["apache2ctl", "-D", "FOREGROUND"]