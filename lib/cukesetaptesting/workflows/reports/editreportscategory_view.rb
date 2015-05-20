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
      def get_copy_button_for_report report_name
        content.a(:text, report_name).when_present.parent.parent.div(:class, "actions").a(:class, "copy")
      end

      def get_move_button_for_report report_name
        content.a(:text, report_name).when_present.parent.parent.div(:class, "actions").a(:class, "move")
      end

      def get_delete_button_for_report report_name
        content.a(:text, report_name).when_present.parent.parent.div(:class, "actions").a(:class, "delete")
      end

      keyword(:system_category_page_title) {content.div(:class,'pageTitle')}
      keyword(:task_new_category) {content.div(:class,'taskSpace').a(:text, 'New Category')}
      keyword(:new_report_category_name) {content.text_field(:id,'name')}
      keyword(:task_save_category) {content.div(:class,'taskSpace').a(:text, 'Save Category')}
      keyword(:report_categories_page_title) {content.h1(:class,'pageTitle')}
      keyword(:constituent_address_copy) {content.div(:id,'etap.fieldset.area.2').lis[0].a(:text,'Copy')}
      keyword(:default_copy_options_title) {content.h1(:class, 'popTitle').span(:class,'titleText')}
      keyword(:category_copy_button) {content.div(:class, 'popFooter').button(:value,'Copy')}
      keyword(:report_category_move) {content.div(:id,'etap.fieldset.area.2').lis[9].a(:text,'Move')}
      keyword(:category_move_button) {content.div(:class, 'popFooter').button(:value,'Move')}
      keyword(:test_category_link) { content.a(:text,'Test Category') }
      keyword(:test_category_page_title) {content.div(:class,'pageTitle')}
      keyword(:new_category_select) {content.select_list(:name,'categoryRef')}
      keyword(:delete_confirm_popup) {content.div(:class,'popContent')}

      keyword(:category_1)  {content.a(:href,'SpecialReportCategories.jsp')}
      keyword(:category_2)  {content.a(:href,'viewCrossDBReports.do')}
      #this href link may be dynamic
      keyword(:category_3)  {content.a(:href,'editReportCategory.do?categoryRef=45.0.2851')}


    end
  end
end
