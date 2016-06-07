FROM ruby:2.2
ENV RAILS_ENV production
RUN gem install rails 
COPY run.sh run.sh
RUN chmod +x run.sh
EXPOSE 3000
CMD ./run.sh