dir = File.join(File.dirname(__FILE__))
$: << File.expand_path("#{dir}/../../lib")
$: <<  File.expand_path(dir)

require 'watir-webdriver'

require 'watirmark'
require 'cukesetaptesting'
require 'watirmark/cucumber/env'
require 'active_support/all'

require 'docx'
require 'pdf-reader'
require 'yomu'

if Watirmark::Configuration.instance.headless_enabled
  require 'headless'
end

include Cukesetaptesting

if Watirmark::Configuration.instance.headless_enabled
  headless = Headless.new
  headless.start
end


at_exit do
  #step "I close the browser"
  # if Watirmark::Configuration.instance.headless_enabled == true
  #   headless.destroy
  # end
 # headless.destroy
end
