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



      #run_existing_report
      keyword(:run_report_link) {content.a(:text, 'Run Report')}
      keyword(:category_base) {content.select(:id, 'select.query.category.1').option(:text,'Base')}
      keyword(:query_all_constituents) {content.select(:id, 'select.query.1').option(:text,'All Constituents - A')}

      keyword(:report_format) {content.div(:id, 'giftTypesControls').select(:name, 'paymentType')}

      #export


    end
  end
end
