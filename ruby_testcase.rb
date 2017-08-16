require 'selenium-webdriver'
require 'rspec/expectations'
include RSpec::Matchers

def setup
  caps = Selenium::WebDriver::Remote::Capabilities.send("chrome")
  @driver = Selenium::WebDriver.for(:remote, url: "http://0.0.0.0:4444/wd/hub", desired_capabilities: caps)
  @driver.manage.window.size = Selenium::WebDriver::Dimension.new(1920, 1080)
end

def teardown
  @driver.quit
end

def run
  setup
  yield
  teardown
end

run do
  # Open the main page and check for the title
  @driver.get 'https://www.walmart.com/'
  expect(@driver.title).to eql 'Walmart.com: Free 2-Day Shipping on Millions of Items'

  # Generate a screenshot of the main page
  # @driver.save_screenshot(File.join(Dir.pwd, "selium-docker-main-page.png"))
  
  end
