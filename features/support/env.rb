require 'watir-webdriver'
require 'headless'
require 'watirmark'
headless = Headless.new
headless.start
at_exit do
  headless.destroy
end
