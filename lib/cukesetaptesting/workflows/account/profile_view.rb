module Cukesetaptesting
  module Account
    class ProfileView < BaseView

      keyword(:journal_link) {content.a(:text, "Journal")}
      keyword(:constit_summary)  { content.div(:id, "followMeDiv1") }
      keyword(:home_page_class) { content.div(:class, "homePageFollow") }
      keyword(:persona_page) { content.form(:name, "personaForm")}
      keyword(:relationships_page) {content.div(:id, "relationships_summary_1")}
      keyword(:journal_page) {content.form(:name, "entityJournalForm")}
      keyword(:other_page) {content.form(:name, "entityOtherForm")}
      keyword(:defined_fields_page) {content.form(:name, "entityUserDefinedValuesForm")}
      keyword(:select_tiles_and_layout_link) {content.h3(:class, 'dashboardManagement').link}
      keyword(:three_equal_columns_layout) {content.div(:id, 'etap.fieldset.area.1').radio(:value, '0')}
      keyword(:save_button) {content.div(:class, 'taskCategory').div(:class, 'taskSpace').input}
      keyword(:left_small_columns) {tiles.divs(:class, 'tilesetRow et-col-lg-4')}
      keyword(:right_small_columns) {tiles.divs(:class, 'tilesetRightRow et-col-lg-4')}
      keyword(:soft_credit_summary_checkbox) {content.div(:id, 'etap.fieldset.area.2').checkbox(:value, '13')}
      keyword(:soft_credit_summary_tile) {content.div(:id, 'tile13')}
      keyword(:recent_journal_entry) {content.table(:id,'journalEntriesTable').tr(:class=>'reportRowAlternate').a}
      keyword(:journal_gift_header) {content.div(:id,'journalEntryBrowserCenter')}
      keyword(:last_gift) {content.a(:text,'Last Gift')}
      keyword(:five_year_summary_recent) {content.table(:id,'fiveYearSummaryTable').a}
      keyword(:journal_start_date) {content.text_field(:id,'startDateField')}

      def tiles
        content.div(:class, 'tilesetContainer')
      end
      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
