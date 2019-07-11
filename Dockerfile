# We're using the Ruby 2.6 base image from Docker Hub and extending it
FROM ruby:2.6

# All following commands will be run in this container directory.
WORKDIR /app

# When caching is enabled, the following line allows the dependency installation (`bundle install`) to be cached/reused as long as the manifest files (`Gemfile` and `Gemfile.lock`) have not been changed.
COPY app/Gemfile app/Gemfile.lock ./
RUN bundle install

# Copying the app files from the project repository on the (largely ephemeral) Docker Host to the Docker container
COPY /app /app
