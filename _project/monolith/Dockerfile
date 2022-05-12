FROM devopsfaith/krakend:2.0 AS server-gateway
COPY ./_project/monolith/image/config/server-gateway.json /etc/krakend/krakend.json

FROM mariadb:10.8-rc AS database
COPY ./_project/monolith/image/script/database /script
