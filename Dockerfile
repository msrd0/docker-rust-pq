FROM alpine:3.8

ENV CARGO_HOME=/usr/local/cargo

RUN apk add --no-cache \
		cargo \
		gcc \
		libpq \
		musl-dev \
		rust \
	&& mkdir -p $CARGO_HOME \
	&& chmod a+w $CARGO_HOME
