require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'capybara/poltergeist'
require 'os'
require 'rspec'
require 'yaml'
require 'without_accents'
require 'net/https'
require 'uri'
require 'nokogiri'
require 'xml/to/json'
require 'open-uri'
require 'pry'
require 'rspec/retry'
require_relative 'page_helper.rb'
require_relative 'helper.rb'




World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(Pages)


ENVIROMENT_TYPE = ENV['ENVIROMENT_TYPE']

HEADLESS = ENV['HEADLESS']

CONFIG = YAML.load_file(File.dirname(__FILE__)+
"/data/#{ENVIROMENT_TYPE}.yml")




Capybara.register_driver :selenium do |app|
  if HEADLESS.eql?('sem_headless')
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      desired_capabilities:Selenium::WebDriver::Remote::Capabilities.chrome(
          'chromeOptions' => {'args' => ['--disable-infobars',
                                     'window-size=1600,1024'] }
      )
    )
  elsif HEADLESS.eql?('com_headless')
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      desired_capabilities:Selenium::WebDriver::Remote::Capabilities.chrome(
          'chromeOptions' => {'args' => ['headless', 'disable-gpu',
                                         '--disable-infobars',
                                         'window-size=1600,1024'] }
      )
    )

end
end


Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 10
  config.app_host = CONFIG['url_home']
end