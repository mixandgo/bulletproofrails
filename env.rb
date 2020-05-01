# features/support/env.rb

require "simplecov"
require "cucumber/rails"
require "cucumber/rspec/doubles"
require "capybara-screenshot/cucumber"
require "email_spec/cucumber"

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise RuntimeError("You need to add database_cleaner to your Gemfile "\
                     "(in the :test group) if you wish to use it.")
end

Before "@timecop" do
  # 20 Dec 2018, 10:00 am
  new_time = Time.zone.parse("2018-12-20 10:00:00")
  Timecop.travel(new_time)
end

After do
  Timecop.return
  I18n.locale = :en
  WebMock.reset!
end

Cucumber::Rails::Database.javascript_strategy = :truncation

# Code from: https://github.com/teamcapybara/capybara/blob/master/lib/capybara/registrations/drivers.rb
# Switches: https://peter.sh/experiments/chromium-command-line-switches/
Capybara.register_driver :selenium_chrome_headless do |app|
  browser_options = ::Selenium::WebDriver::Chrome::Options.new.tap do |opts|
    opts.args << "--window-size=1920,1080"
    opts.args << "--headless"
  end
  Capybara::Selenium::Driver
    .new(app, browser: :chrome, options: browser_options)
end

Capybara.javascript_driver = :selenium_chrome_headless
Capybara.asset_host = "http://localhost:3001"
Capybara::Screenshot.autosave_on_failure = false
Capybara::Screenshot.prune_strategy = :keep_last_run
