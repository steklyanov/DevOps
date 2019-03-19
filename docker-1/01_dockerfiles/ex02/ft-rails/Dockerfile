FROM ruby

RUN apt-get update && \
    apt-get install -y build-essential libcurl4-openssl-dev libxml2-dev libsqlite3-dev libpq-dev nodejs postgresql-client sqlite3 --no-install-recommends && \ 
	    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*



# throw errors if Gemfile has been modified since Gemfile.lock
ONBUILD COPY app /opt/app
ONBUILD WORKDIR /opt/app

ONBUILD EXPOSE 3000
ONBUILD RUN bundle install

ONBUILD RUN rake db:migrate 

ONBUILD RUN rake db:seed
EXPOSE 3000
