module Cukesetaptesting
  module Reports
    class Editreportscategory < BaseController
      @model = EditreportscategoryModel
      @view = EditreportscategoryView

      def on_system_page?
        return @view.report_category_title.when_present.text.include? 'Edit Report Category : System'
      end


      #run_existing_report
      def run_report
        @view.run_report_link.when_present.click
      end

      def select_category_base
        @view.category_base.when_present.click
      end

      def select_query_all_constituents
        @view.query_all_constituents.when_present.click
      end

      #export


      def download_as(type)
        @view.report_format.select(type)
      end

    end
  end
end

