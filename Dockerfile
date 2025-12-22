FROM ruby:3.4.8

RUN apt-get update -qy && apt-get install rsync -qy

RUN adduser --uid 1001 rurema
WORKDIR /home/rurema
USER rurema

COPY --chown=rurema:rurema repos/bitclust bitclust
COPY --chown=rurema:rurema repos/doctree doctree
RUN cd doctree && bundle install
