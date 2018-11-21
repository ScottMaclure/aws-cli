FROM alpine:3.6
RUN apk -v --update add \
		bash \
        groff \
        less \
        mailcap \
        py-pip \
        python \
        zip \
        && \
    pip install --upgrade awscli && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
VOLUME /root/.aws
VOLUME /project
WORKDIR /project
CMD ["python"]
