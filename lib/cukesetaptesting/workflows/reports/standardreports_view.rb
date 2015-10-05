module Cukesetaptesting
  module Reports
    class StandardreportsView < BaseView
      keyword(:standard_reports_title)  { content.div(:class,'pageTitle') }

      keyword(:generate_account_summary_report_click) {content.a(:text, 'Generate Account Summary Report')}
      keyword(:show_relationships_checkbox)  {content.checkbox(:name, 'showingRelationships')}
      keyword(:show_user_defined_fields_checkbox) {content.checkbox(:name, 'showingUDFs')}
      keyword(:show_recognition_info_checkbox) {content.checkbox(:name, 'showingRecognition')}
      keyword(:limit_journal_checkbox) {content.checkbox(:name, 'limitJournalEntries')}
      keyword(:account_summary_submit_button) {content.button(:value, 'Submit')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
