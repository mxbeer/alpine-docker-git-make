FROM alpine/git

RUN apk fix && \
    apk --no-cache --update add make

ENTRYPOINT ["git"]
CMD ["--help"]
