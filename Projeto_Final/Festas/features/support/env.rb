require 'capybara'
require 'capybara/cucumber'
require 'report_builder'
require "faker"
require "rspec"

EL = YAML.load_file('./Data/enviroments/elm.yml')

require 'yaml'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end

