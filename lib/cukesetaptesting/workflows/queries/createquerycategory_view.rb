module Cukesetaptesting
  module Queries
    class CreatequerycategoryView < BaseView
      keyword(:create_comms_category_title)  { query_page.div(:class, 'pageTitle')}
      keyword(:new_query_category)  {content.a(:text, 'New Category')}
      keyword(:set_query_category_name)  {content.text_field(:id, 'name')}
      keyword(:save_new_query_category)  {content.a(:text, 'Save Category')}
      keyword(:delete_query_category_yes) {content.button(:value, 'Yes')}
      keyword(:set_query_name)  {content.text_field(:id, 'query.name')}
      keyword(:select_data_return_type_value) {content.select(:name, 'returnType')}
      keyword(:select_query_criteria_category_value)  {content.select(:id, 'fieldCategory')}
      keyword(:select_journal_entry_date_value) {content.select(:id, 'TestJournalEntryForDateData.dynamicDateRange')}
      keyword(:set_jed_start_date)  {content.text_field(:id, 'TestJournalEntryForDateData.startDateString')}
      keyword(:set_jed_end_date)  {content.text_field(:id, 'TestJournalEntryForDateData.endDateString')}
      keyword(:select_itr_first_comparison_value) {content.select(:id, 'TestTransactionForReceivedData.comparisonKey')}
      keyword(:itr_first_comparison_amount) {content.text_field(:id, 'TestTransactionForReceivedData.amountString')}
      keyword(:edit_query)  {content.button(:value, 'Edit')}
      keyword(:custom_account_query_add)  {content.div(:id, 'etap.fieldset.area.2').a(:text, 'Add')}
      keyword(:find_account_popup_close)  {content.button(:value, 'Close')}
      keyword(:find_account_popup_search) {content.text_field(:id, 'searchString')}
      keyword(:find_account_popup_close)  {content.button(:value, 'Find')}
      keyword(:combine_queries_subtract)  {content.img(:id, 'vensub')}
      keyword(:compound_category_one_select_value)  {content.select(:id, 'select.query.category.1')}
      keyword(:compound_query_one_select_value)  {content.select(:id, 'select.query.1')}
      keyword(:compound_category_two_select_value)  {content.select(:id, 'select.query.category.2')}
      keyword(:compound_query_two_select_value)  {content.select(:id, 'select.query.2')}
      keyword(:combine_queries_add)  {content.img(:id, 'venadd')}
      keyword(:query_criteria_name_field) {content.text_field(:id, 'TestEntityRoleForNamesData.values')}
      keyword(:query_cannot_be_deleted_message) {content.div(:id, '1429044209423').div(:class, 'popContent')}
      keyword(:cannot_delete_query_ok)  {content.button(:value, 'Ok')}


      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

      def query_page
        content.div(:id,'queryCategoryPage')
      end

      def delete_query_category(category)
        content.ul(:id, 'list_categories').link(:text, category).parent.parent.div(:class, 'actions').a(:class, 'delete')
      end

      def delete_query(name)
        content.ul(:id, 'list_queries').link(:text, name).parent.parent.div(:class, 'actions').a(:class, 'delete')
      end

      def new_query_task(value)
        content.a(:text, value)
      end

      def query_criteria(item)
        content.div(:class, 'scrollable').div(:id, 'listViewResults').a(:text,item)
      end

      def custom_account_query_add_name(name)
        content.a(:text, name)
      end

    end
  end
end
