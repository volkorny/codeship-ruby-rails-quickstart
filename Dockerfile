# We're using the Ruby 2.6 base image and extending it
FROM ruby:2.6

# Create a directory for your application code and set it as the WORKDIR. All following commands will be run in this directory.
RUN mkdir /app
WORKDIR /app

# COPY Gmefile and Gemfile.lock and install dependencies before adding the full code so the cache only
# gets invalidated when dependencies are changed
COPY app/Gemfile app/Gemfile.lock ./
RUN bundle install

# Copy the app source code into the image
COPY /app /app
