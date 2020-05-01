# Catch unsafe migrations in development.
gem "strong_migrations"

# Gradual type checker, which enables incremental adoption.
gem "sorbet-runtime"
gem "sorbet-rails"

group :development, :test do
  # Debugging tools.
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "pry-rails"
  gem "pry-doc"
  gem "pry-byebug"
end

group :development do
  gem "sorbet"

  gem "rubocop", require: false
  gem "rubocop-performance"
  gem "rubocop-rspec"
  gem "rubocop-rails"

  # Quick automated code review of your changes.
  gem "pronto"
  gem "pronto-rubocop", require: false

  # Help to kill N+1 queries and unused eager loading.
  gem "bullet"
  
  # Security vulnerability scanner.
  gem "brakeman"

  # Code smell detector.
  gem "reek"

  # Code metric tool.
  gem "rails_best_practices"

  # Ruby language server (intellisense, diagnostics, inline documentation, and type checking).
  gem "solargraph"
  
  # Git hook manager (enforce git hooks in a team setting).
  gem "overcommit"
  
  # Patch-level verification for Bundler.
  gem "bundle-audit"
end

group :test do
  gem "cucumber-rails", require: false
  gem "selenium-webdriver"
  
  # Strategies for cleaning databases.
  gem "database_cleaner"
  
  # Matchers and Cucumber steps for testing emails.
  gem "email_spec"

  # Stubbing and setting expectations on HTTP requests.
  gem "webmock"

  # Automatically save screen shots when a Capybara scenario fails.
  gem "capybara-screenshot"

  # Code coverage.
  gem "simplecov", require: false
  
  # Simple one-liner tests for common Rails functionality.
  gem "shoulda-matchers", "~> 3.1"

  # JSON Schema Validator.
  gem "json-schema"

  # Helpers for using Sorbet & RSpec together.
  gem "rspec-sorbet"
  
  # A RuboCop extension for Faker.
  gem "rubocop-faker"
end
