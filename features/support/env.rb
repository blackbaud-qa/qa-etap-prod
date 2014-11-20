dir = File.join(File.dirname(__FILE__))
$: << File.expand_path("#{dir}/../../lib")
$: <<  File.expand_path(dir)

require 'watir-webdriver'
# if Watirmark::Configuration.instance.headless_enabled == true
#   #require 'headless'
# end
require 'watirmark'
require 'cukesetaptesting'
require 'watirmark/cucumber/env'

include Cukesetaptesting

#headless = Headless.new
#headless.start

at_exit do
  #step "I close the browser"
  # if Watirmark::Configuration.instance.headless_enabled == true
  #   headless.destroy
  # end
 # headless.destroy
end
