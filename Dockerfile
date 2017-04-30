FROM nginx:1.13.0

EXPOSE 8080

ADD index.html /usr/share/nginx/html
ADD nginx.conf /etc/nginx/nginx.conf
ADD data /usr/share/nginx/html/data
RUN apt-get update && apt-get install -y unzip

RUN unzip /usr/share/nginx/html/data/gmail.zip -d /usr/share/nginx/html/data; rm /usr/share/nginx/html/data/gmail.zip;

