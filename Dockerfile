FROM webcenter/rancher-backup:develop

COPY run.sh /

RUN chmod +x /run.sh

CMD ["/run.sh"]
