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
      keyword(:run_report_link) {content.a(:href, '/prod/reportLauncher.do?nextAction=/customExport&definitionRef=39.0.14119658')}
      keyword(:category_base) {content.select(:id, 'select.query.category.1').option(:text,'Base')}
      keyword(:query_all_constituents) {content.select(:id, 'select.query.1').option(:text,'All Constituents - A')}


    end
  end
end
