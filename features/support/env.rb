# frozen_string_literal: true

ENV["RACK_ENV"] ||= "test"

$LOAD_PATH.unshift(File.expand_path("../../../lib", __FILE__))

require "rspec/expectations"
require "tic_tac_toe"

# If you need Capybara for web/features, uncomment these lines:
# require 'capybara/cucumber'
# require 'capybara/rspec'

# Enable RSpec matchers and mocks inside Cucumber steps
require 'rspec/mocks'
World(RSpec::Matchers)

Before do
	RSpec::Mocks.setup
end

After do
	RSpec::Mocks.teardown
end
