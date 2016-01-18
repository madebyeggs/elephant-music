source 'https://rubygems.org'
ruby '1.9.3'
gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
gem 'font-awesome-rails', '~> 4.3.0.0'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'therubyracer'
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"
gem "friendly_id"
gem 'devise'
gem 'paperclip'
gem 'aws-sdk'
gem 'jquery-gmap3-rails'
gem 'bitly', '~> 0.9.0'
gem 'google-analytics-rails'
gem 'newrelic_rpm'
gem 'rack-zippy'
gem 'lazyload-rails'
gem 'meta-tags'
gem 'turbolinks'
gem 'nprogress-rails'
gem 'will_paginate', '~> 3.0.7'
gem 'masonry-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'sqlite3', '1.3.7'
  gem 'rspec-rails', '2.13.1'
end

group :production do
  gem 'pg', '0.15.1'
end

gem 'rails_12factor', '0.0.2', group: [:staging, :production]