require 'cukesetaptesting/extensions/webdriver_extensions'
require "watir-webdriver/extensions/alerts"
require 'cukesetaptesting/views/base_view'
require 'cukesetaptesting/controllers/base_controller'
require 'cukesetaptesting/controllers/search_controller'
Watirmark.loader do
  base_directory File.dirname(__FILE__)
  product 'Cukesetaptesting'
  load_files 'checkers/**/*.rb'
end

