require 'rubygems'
require 'rspec'
require 'watir'
require 'yaml'

include Selenium

#Creating Remote WebDriver

#browser = Watir::Browser.new(:remote, :url, =&gt; "http://SauceUsername:SauceKey@ondemand.saucelabs.com:80/wd/hub",
#                              :desired_capabilities =&gt; WebDriver::Remote::Capabilities.firefox)

#if you want to run it locally, use Watir::Browser.new :firefox

browser = Watir::Browser.new :firefox

Before do
  @browser = browser
end

# After do
 #  @browser.close
#end 