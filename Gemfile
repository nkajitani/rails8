source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.0.2", ">= 8.0.2.1"
# Use trilogy as the database for Active Record
gem "trilogy", "~> 2.7"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
end

gem "carrierwave", "~> 3.1.2"

gem "devise", "~> 4.9.4"

gem "devise-i18n", "~> 1.15.0"

gem "kaminari", "~> 1.2.2"

gem "mini_magick", "~> 5.3.1"

gem "rails-i18n", "~> 8.0.2"

group :development do
  gem "letter_opener_web", "~> 3.0.0"

  gem "better_errors", "~> 2.10.1"

  gem "binding_of_caller", "~> 1.0.1"
end

group :development, :test do
  gem "rspec-rails", "~> 8.0.2"

  gem "rails-controller-testing", "~> 1.0.5", require: false

  gem "shoulda-matchers", "~> 6.5.0", require: false

  gem "factory_bot_rails", "~> 6.5.1"
end
