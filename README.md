# Bulletproof Ruby on Rails Resources

This repository holds a list of gems and configuration files that I have found to be indispensable for writing high-quality Ruby on Rails applications.

I am keeping this repository up to date with all the new gems, tools, and settings that I find useful.

## Gems

You can find a list of the gems I use in all of my projects by looking at the [Gemfile](Gemfile).

## Settings and configs

You can find the RuboCop settings I use in the [rubocop.yml](rubocop.yml) file.

## Test configs

You can find the config file I use for Cucumber in the [env.rb](env.rb) file.

For RSpec, I use [spec_helper.rb](spec_helper.rb) for all my tests that do not require Rails, and [rails_helper.rb](rails_helper.rb) for everything else.

## Active Job

If you need to test jobs, take a look at the [active_job.rb](active_job.rb) file.