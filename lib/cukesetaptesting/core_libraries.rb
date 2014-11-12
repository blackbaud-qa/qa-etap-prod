require 'cukesetaptesting/site/base_view'
require 'cukesetaptesting/site/base_controller'
require 'cukesetaptesting/site/search_controller'
Watirmark.loader do
  base_directory File.dirname(__FILE__)
  product 'Cukesetaptesting'
  load_files 'checkers/**/*.rb'
end

