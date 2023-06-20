# Use the official Ruby base image
FROM ruby:3.2.2

# Set the working directory in the container
WORKDIR /app

# Set production mode
ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

# Copy the Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./
RUN chmod -R 777 ./

# Install dependencies
RUN bundle install

# Copy the rest of the application code to the container
COPY . .

# Precompile assets
RUN rake assets:precompile

# Expose the port that the Rails application will run on
EXPOSE 3000

# Start the Rails application
CMD ["rails", "server", "-b", "0.0.0.0"]