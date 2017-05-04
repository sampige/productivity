FROM nginx:1.13.0

EXPOSE 8080

ADD nginx.conf /etc/nginx/nginx.conf
RUN apt-get update && apt-get install -y unzip wget && mkdir /usr/share/nginx/html/data

RUN wget -O /usr/share/nginx/html/data/gmail.zip https://media.gcflearnfree.org/assets/offlinesite/individualtopic_downloads/gmail.zip && \
    unzip /usr/share/nginx/html/data/gmail.zip -d /usr/share/nginx/html/data && \
    rm /usr/share/nginx/html/data/gmail.zip;

ADD index.html /usr/share/nginx/html
