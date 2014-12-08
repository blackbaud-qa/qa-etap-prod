module Cukesetaptesting
  module Giving
    class Imports < BaseController
      @model = ImportsModel
      @view = ImportsView

      def on_imports_page?
        @view.imports_page_title.when_present.text.include? 'Import Categories'
      end

      def on_prosepect_research_page?
        @view.imports_page_title.when_present.text.include? 'Prospect Research'
      end

      def on_planned_giving_page?
        @view.imports_page_title.when_present.text.include? 'Planned Giving Calculators'
      end

      def on_cultivation_tools_page?
        @view.imports_page_title.when_present.text.include? 'Cultivation Tools'
      end

    end
  end
end

