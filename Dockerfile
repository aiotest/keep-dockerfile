FROM nginx:1.25

ARG REPLACE=oops

COPY index.html /usr/share/nginx/html
COPY linux.png /usr/share/nginx/html
COPY build-arg.html /usr/share/nginx/html

RUN sed -i.bak "s/REPLACEME/${REPLACE}/g" /usr/share/nginx/html/build-arg.html


EXPOSE 80 443 	

CMD ["nginx", "-g", "daemon off;"]
