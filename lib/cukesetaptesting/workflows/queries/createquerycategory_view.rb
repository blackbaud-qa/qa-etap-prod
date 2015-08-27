module Cukesetaptesting
  module Queries
    class CreatequerycategoryView < BaseView
      keyword(:create_comms_category_title)  { query_page.div(:class, 'pageTitle')}
      keyword(:edit_query_title) {content.div(:id,'queryPage').div(:class,'pageTitle')}
      keyword(:new_query_category)  {content.a(:text, 'New Category')}
      keyword(:set_query_category_name)  {content.text_field(:id, 'name')}
      keyword(:save_new_query_category)  {content.a(:text, 'Save Category')}
      keyword(:edit_query_save) {content.button(:id,'saveButton')}
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
      #keyword(:find_account_popup_search) {content.text_field(:id, 'searchString')}
      keyword(:find_account_popup_search) { browser.iframe(:name => 'content').form(:name => 'entitySearchForm').text_field(:id => 'searchString')}
      keyword(:find_account_popup_find)  {content.button(:value, 'Find')}
      keyword(:find_account_popup_close)  {content.button(:value, 'Close')}
      keyword(:combine_queries_subtract)  {content.img(:src, 'images/queriesSubtract.png')}
      keyword(:compound_category_one_select_value)  {content.select(:id, 'select.query.category.1')}
      keyword(:compound_query_one_select_value)  {content.select(:id, 'select.query.1')}
      keyword(:compound_category_two_select_value)  {content.select(:id, 'select.query.category.2')}
      keyword(:compound_query_two_select_value)  {content.select(:id, 'select.query.2')}
      keyword(:combine_queries_add)  {content.img(:src, 'images/queriesAdd.png')}
      keyword(:query_criteria_name_field) {content.text_field(:id, 'TestEntityRoleForNamesData.values')}
      keyword(:query_criteria_short_salutation_field) {content.text_field(:id, 'testByName(TestEntityRoleForShortSalutationsData).values')}
      keyword(:query_criteria_state_field) {content.text_field(:id,'testByName(TestEntityRoleForStatesData).states')}
      keyword(:cannot_delete_query_ok)  {content.button(:value, 'Ok')}
      keyword(:query_results_my_org_icon) {content.div(:id, 'etapreporttag1_outerdiv').img(:alt,'My Organization')}

      keyword(:duplicate_query_category_warning) {content.div(:class, 'informationWarning')}

      def string_exists_on_page?(query_string)
        content.link(:text => query_string).exists?
      end

      def duplicate_query_category_back_button_click
        content.button(:value => 'Back').when_present.click
      end

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
        # content.div(:id,'fieldCategory.Commonly Used Fields').a(:text,item)
        content.div(:class,'browseSearchSection').a(:text,item)
        # content.div(:class, 'scrollable').div(:id, 'listViewResults').a(:text,item)
      end

      def custom_account_query_add_name(name)
        content.a(:text, name)
      end

      def tasks_menu_link(value)
        content.a(:text, value)
      end

      def click_missing_query_category(category)
        content.ul(:id, 'list_categories').link(:text, category)
      end

      def preview_query(name)
        content.ul(:id, 'list_queries').link(:text, name).parent.parent.div(:class, 'actions').a(:class, 'preview')
      end

      def query_preview_results_value(name)
        content.div(:id, 'etapreporttag1_outerdiv').a(:text, name)
      end

      def select_journal_entry_type_checkbox(checkbox_text)
        #  content.div(:id => 'edit.com.eTapestry.transport.TestJournalEntryForAllTypesData').label(:text => checkbox_text).checkbox.when_present.set true
        content.label(:text => checkbox_text).checkbox.when_present.set true
      end

      def deselect_journal_entry_type_checkbox(checkbox_text)
        content.div(:id => 'edit.com.eTapestry.transport.TestJournalEntryForAllTypesData').label(:text => checkbox_text).checkbox.when_present.clear
      end

      def account_name_selector(ids)
        content.button(:name, ids)
      end

      def set_account_whoever_runs(ids)
        content.checkbox(:id, ids)
      end

      def set_criteria_any_value(prefix)
        selector = prefix + '.fieldPopulatedTest'
        content.checkbox(:id, selector)
      end

      def set_criteria_no_value(prefix)
        selector = prefix + '.fieldEmptyTest'
        content.checkbox(:id, selector)
      end

      def set_criteria_text_value_first(prefix, id)
        selector = 'testByName(' + prefix + ')' + '.' + id
        content.text_field(:id, selector)
      end

      def set_criteria_text_value_account_first(prefix, id)
        selector = prefix + '.' + id
        content.text_field(:id, selector)
      end

      def set_criteria_text_value(prefix, index)
        selector = prefix + '.table_Row' + index.to_s
        content.tr(:id, selector).text_field
      end

      def dropdown_selector(id)
        content.select(:id, id)
      end

      def input_selector(id)
        content.text_field(:id, id)
      end

      def checkbox_selector(name, value)
        content.checkbox(:name, name).parent.parent.parent.checkbox(:value, value)
      end

      def checkbox_selector_by_id(id)
        content.checkbox(:id, id)
      end

      def dropdown_select_by_name(name)
        content.select(:name, name)
      end

      def text_select_by_name(name)
        content.text_field(:name, name)
      end

      def radio_button_by_name(name, value)
        content.radio(:name, name).parent.radio(:value, value)
      end

      def criteria_phone_type_select
        content.select(:name, 'testByName(TestEntityRoleForPhonesData).phoneTypeName')
      end

      def set_criteria_text_phone_number_first(prefix)
        selector = prefix + '.phoneNum'
        content.text_field(:id, selector)
      end

      def click_criteria_dynamic_link(id)
        content.span(id: id).link
      end

      def check_only_matching_gift_checkbox(id, prefix)
        selector = 'testByName(' + prefix + ').' + id
        content.checkbox(:name, selector)
      end

      def checkbox_selector_by_text(name, value)
        content.checkbox(:name, name).parent.parent.parent.label(:text, value).checkbox
      end

      def cart_home_button
        content.div(:id, 'TestTransactionForOrderItemsData_mainInputs').images[0]
      end

      def checkbox_selector_for_cart(name, value)
        content.checkbox(:name, name).parent.parent.parent.label(:text, value).parent.parent.checkbox
      end
    end
  end
end
