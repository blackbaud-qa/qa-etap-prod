module Cukesetaptesting
  module Reports
    class EditreportscategoryView < BaseView
      keyword(:report_category_title)  {edit_report_category_page.div(:class,'pageTitle')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

      def edit_report_category_page
        content.div(:id,'reportCategoryPage')
      end
    end
  end
end
