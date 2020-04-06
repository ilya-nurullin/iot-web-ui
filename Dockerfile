FROM node:13.1.0-alpine3.11 AS build-dashboard
COPY ./dashboard /dashboard
WORKDIR /dashboard
RUN npm install
RUN npm run build

FROM python:3.7.7-alpine3.11
#Возможно лучше другой сервер?
COPY ./BlocklyForHouse /iot-web-ui/BlocklyForHouse
COPY --from=build-dashboard /dashboard/index.html /iot-web-ui/dashboard/index.html
COPY --from=build-dashboard /dashboard/dist /iot-web-ui/dashboard/dist

CMD python3 -m http.server --directory "/iot-web-ui"