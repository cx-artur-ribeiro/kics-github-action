FROM hiro12cx/kics_image:v2.1.9_hotfix_004 as kics-env
 
FROM cgr.dev/chainguard/wolfi-base:latest
 
COPY --from=kics-env /app /app
 
COPY ./entrypoint.sh /entrypoint.sh
 
RUN chmod +x /entrypoint.sh
 
COPY ./ /app
 
ENTRYPOINT ["/entrypoint.sh"]
