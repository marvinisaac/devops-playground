FROM devopsfaith/krakend:2.0 AS server-gateway
COPY ./_project/monolith/image/config/server-gateway.json /etc/krakend/krakend.json

FROM mariadb:10.8-rc AS database
COPY ./_project/monolith/image/script/database /script

FROM mcuadros/ofelia:v0.3.6 AS scheduler
COPY ./_project/monolith/image/config/scheduler/config.template /data/config.template
COPY ./_project/monolith/image/script/scheduler/startup.sh /startup.sh
CMD ["startup.sh"]
