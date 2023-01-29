#create a jekyll file from a ruby alpine image

# at a minimum use ruby 2.5 or later 
FROM ruby:2.7-alpine3.15

# add jekyll dependencies to alpineRU
RUN apk add --no-cache build-base gcc cmake git

#update the ruby bundler and install Jekyll
RUN gem update bundler && gem install bundler Jekyll
