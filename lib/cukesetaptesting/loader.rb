require 'watirmark/loader'
module Cukesetaptesting
  class Loader
    class << self
      @@loaded = {}

      def load_workflow(name)
        load_files name, "*{_view}.rb"
        load_files name, "*{_model}.rb"
        load_files name, "*{_controller}.rb"
        load_files name, "*.rb"
      end

      def load_files(name, files)
        Watirmark.loader do
          base_directory File.dirname(__FILE__)
          product 'Cukesetaptesting'
          load_files "workflows/#{name}#{files}"
        end
      end
    end
  end
end