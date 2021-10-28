FROM alpine:latest
RUN apk add --no-cache nodejs npm
WORKDIR /app
COPY . /app
RUN npm install
RUN npm install express --save
RUN apk add --no-cache tzdata
ENV TZ America/Toronto
EXPOSE 80
ENTRYPOINT ["node"]
CMD ["index.js"]

