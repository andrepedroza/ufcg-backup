FROM webcenter/rancher-backup:develop

#Change timezone.
RUN apk add --no-cache tzdata
RUN ln -snf /usr/share/zoneinfo/America/Recife /etc/localtime && echo "America/Recife" > /etc/timezone

COPY run.sh /

RUN chmod +x /run.sh

CMD ["/run.sh"]
