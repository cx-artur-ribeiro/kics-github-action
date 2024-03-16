FROM arturribeirocx/kics-gh1302:new2

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

COPY ./ /app

ENTRYPOINT ["/entrypoint.sh"]
