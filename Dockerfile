FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.4.pre.alpha.pre.81

RUN gem install aws_security_viz --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["aws_security_viz"]
CMD ["--help"]
