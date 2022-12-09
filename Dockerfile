FROM ruby:2.7-alpine

# Add Ruby dependencies to Alpine
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# Install Jekyll and its dependencies
RUN gem update bundler && gem install jekyll:3.9.2

# set work directory
RUN mkdir -p /usr/src/app 
WORKDIR /usr/src/app