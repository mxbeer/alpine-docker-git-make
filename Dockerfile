FROM alpine/git

RUN apk fix && \
    apk --no-cache --update add make

ENTRYPOINT [ "/bin/ash", "-c" ]
CMD [""]
