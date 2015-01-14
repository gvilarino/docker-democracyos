FROM seanmcgary/nodejs-raw-base
MAINTAINER Jose Fresco <josemariafresco@gmail.com>

EXPOSE 3000

RUN apt-get install -y mongodb
RUN mkdir data && mkdir data/db

ADD app/ dos/
# RUN git clone https://github.com/democracyos/app dos
# RUN cp dos/config/sample.json dos/config/development.json
# RUN cd dos && make packages
# RUN npm install -g component@1.0.0

# RUN export GITHUB_USERNAME=af9a181481cd083ce0083a5e148546b5102f3326 && export GITHUB_PASSWORD=x-oauth-basic && cd dos && component install

ADD start.sh start.sh
RUN chmod +x start.sh
CMD /start.sh