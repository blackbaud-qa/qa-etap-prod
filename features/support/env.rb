dir = File.join(File.dirname(__FILE__))
$: << File.expand_path("#{dir}/../../lib")
$: <<  File.expand_path(dir)

require 'watir-webdriver'
#require 'headless'
require 'watirmark'
require 'cukesetaptesting'
require 'watirmark/cucumber/env'

include Cukesetaptesting

#headless = Headless.new
#headless.start
at_exit do
 # headless.destroy
end
