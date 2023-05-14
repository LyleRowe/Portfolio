# Install dependencies only when needed
FROM node:16-alpine
WORKDIR /app
COPY /build ./

RUN npm i -g serve

EXPOSE 3000

CMD ["serve", "-s"]