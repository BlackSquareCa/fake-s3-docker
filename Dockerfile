FROM blacksquare/ruby:2.3

RUN mkdir -p /app/data
WORKDIR /app

RUN gem install fakes3

EXPOSE 4569

ENTRYPOINT ["fakes3", "-r" ,"/app/data", "-p", "4569"]
