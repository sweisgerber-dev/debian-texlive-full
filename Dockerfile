# ===========================================================================================
#
# Dockerfile for compiling latex documents
#
# ===========================================================================================
FROM debian:stretch-slim

MAINTAINER Sebastian Weisgerber <sweisgerber.dev@gmail.com>

ENV WORKDIR=/workspace

# Install dependencies first texlive, it takes forever
RUN apt-get update && \
    apt-get install -y \
    fonts-freefont-otf \
    make \
    texlive-bibtex-extra \
    texlive-full \
    texlive-lang-english \
    texlive-lang-german \
    texlive-latex-extra \
&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p ${WORKDIR}

COPY config/entrypoint.sh /usr/local/bin/entrypoint.sh

# EXPOSE ###############################################################################################################
VOLUME ["${WORKDIR}"]
WORKDIR ${WORKDIR}

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["/usr/bin/env bash"]
