FROM debian:stretch-slim
COPY static-precompress /root/static-precompress
RUN apt-get update && apt-get install -y gzip brotli && rm -rf /var/lib/apt/lists/* && chmod +x /root/static-precompress && mkdir /files
ENTRYPOINT ["/root/static-precompress"]
CMD ["/files"]
