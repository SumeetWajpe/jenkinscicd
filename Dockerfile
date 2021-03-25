FROM node:15.12.0
WORKDIR /app
ADD . /app
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:5505 || exit 1
EXPOSE 5505
CMD npm start