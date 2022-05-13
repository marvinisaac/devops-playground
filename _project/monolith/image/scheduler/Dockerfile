FROM mcuadros/ofelia:v0.3.6
COPY ./_project/monolith/image/scheduler/config.template /data/config.template
COPY ./_project/monolith/image/scheduler/startup.sh /startup.sh
ENTRYPOINT ["/startup.sh"]
