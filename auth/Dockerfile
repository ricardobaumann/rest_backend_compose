FROM ruby:2.2

ENV RAILS_ENV development
RUN gem install rails 

RUN git clone https://github.com/ricardobaumann/who_are_you
WORKDIR who_are_you
RUN git fetch --all
RUN git checkout url_redirect
RUN bundle install
EXPOSE 3000
CMD git pull origin url_redirect && bundle install && rake db:migrate && rake db:seed && rails s -b 0.0.0.0