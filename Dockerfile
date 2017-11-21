FROM debian:stretch

RUN apt-get update && apt-get install -y cpanminus build-essential less
RUN cpanm --installdeps Moose
RUN cpanm DateTime Term::ReadLine::Perl Term::ReadKey
