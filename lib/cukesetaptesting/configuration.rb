require 'watirmark/configuration'

Watirmark::Configuration.instance.defaults = {
  :configfile => "#{File.dirname(__FILE__) + '/../..'}/config.yml"
  # :webdriver => :chrome,
}
Watirmark::Configuration.instance.reload