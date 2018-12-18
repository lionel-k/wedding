# Install dependencies:
# - build-essential: To ensure certain gems can be compiled
# - nodejs: Compile assets
# - npm: Install node modules
# - yarn: Install & manage node modules [should make npm obsolete]
# - libpq-dev

FROM ruby:2.4.4

RUN apt-get update -qq \
  && apt-get install -y --no-install-recommends \
  libpq-dev \
  qt5-default \
  libqt5webkit5-dev

# Install the latest version of Node
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
        && apt-get install -y nodejs

# Install yarn
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \
    apt-get install -qq -y build-essential yarn

RUN mkdir /app

WORKDIR /app

COPY Gemfile /app/

COPY Gemfile.lock /app/

RUN bundle install

COPY package.json /app/


RUN yarn install

COPY . /app/
