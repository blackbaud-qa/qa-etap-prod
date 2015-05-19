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
      # keyword(:run_report_link) {content.a(:text, 'Run Report')}
      keyword(:run_report_link) {content.div(:id, 'etap.fieldset.table.2').lis[8].a(:text, 'Run Report')}
      keyword(:category_base) {content.select(:id, 'select.query.category.1').option(:text,'Base')}
      keyword(:query_all_constituents) {content.select(:id, 'select.query.1').option(:text,'All Constituents - A')}

      keyword(:report_format)  { content.select_list(:id,'modeSelection') }
      keyword(:page_title) {content.div(:class, 'pageTitle')}

      #export
      keyword(:downloaded_as_pdf) {content.div(:id, 'pdfDownloadMessage').b}
      keyword(:dropbox_list) {content.ul(:id, 'list_dropBox').li}
      keyword(:generating_report) {content.div(:id, 'messageArea').div}
      keyword(:report_sent) {content.div(:class, 'contentBodyDiv').b}


      #report_load_copy_move_delete
      keyword(:new_category)

    end
  end
end
