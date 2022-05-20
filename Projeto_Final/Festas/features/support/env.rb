require 'capybara'
require 'capybara/cucumber'
require 'report_builder'
require "faker"
require "rspec"
require 'yaml'

EL = YAML.load_file('./Data/enviroments/elements.yml')

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end

