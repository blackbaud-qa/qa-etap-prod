module Cukesetaptesting
  module Reports
    class Editreportscategory < BaseController
      @model = EditreportscategoryModel
      @view = EditreportscategoryView

      def on_system_page?
        return @view.report_category_title.when_present.text.include? 'Edit Report Category : System'
      end
    end
  end
end

