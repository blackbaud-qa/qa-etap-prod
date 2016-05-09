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
      keyword(:edit_query)  {content.button(:id, 'editQueryBtn')}
      keyword(:custom_account_query_add)  {content.div(:id, 'etap.fieldset.area.3').button(:value, 'Add Account')}
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

      keyword(:set_query_description) {content.textarea(:name, 'query.description')}
      keyword(:field_has_any_value) {content.input(:id, 'TestEntityRoleForAddressesData.fieldPopulatedTest')}
      keyword(:donor_review) {content.a(:text, 'Donor Review <= Acknowledgement')}
      keyword(:donor_review_description) {content.div(:text, '2015 Donors <= with a mailing address')}
      keyword(:set_journal_contact_subject) {content.input(:name, 'subject')}
      keyword(:journal_contact_method) {content.i(:id, 'contactMethodRef_comboArrow')}
      keyword(:journal_contact_method_phone) {content.div(:text, 'Phone')}
      keyword(:enter_contact_subject_text) {content.input(:id, 'TestJournalEntryForSubjectsData.values')}
      keyword(:plus_sign_query_criteria) {content.img(:src, 'images/plus-tick.gif')}
      keyword(:enter_second_contact_subject_text) {content.tr(:id, 'TestJournalEntryForSubjectsData.table_Row2').input(:name, 'testByName(TestJournalEntryForSubjectsData).values')}
      keyword(:display_query_results) {content.td(:text, 'Displaying 1 - 2 of 2')}
      keyword(:click_delete_query_preview) {content.input(:id, 'null')}
      # keyword(:golf_outing_discussion_contact) {content.a(:text, 'Golf Outing Discussion')}
      keyword(:golf_outing_discussion_contact) {content.td(:text,/Golf Outing Discussion/).parent.a}
      # keyword(:gala_contact) {content.a(:text, 'Called to Discuss Gala')}
      keyword(:gala_contact) {content.td(:text,/Called to Discuss Gala/).parent.a}
      keyword(:favorite_query) {content.checkbox(:id, 'favorite')}
      keyword(:change_query_type) {content.a(:href, 'javascript:openDynamicStaticWindow()')}
      keyword(:query_type_static) {content.radio(:id, 'modalStatic')}
      keyword(:query_type_continue) {content.button(:value, 'Continue')}
      keyword(:query_account_name) {content.text_field(:id, 'TestEntityRoleForNamesData.values')}
      keyword(:queries_menu_tab_click) {content.div(:id, 'menuBottomBar').li(:id, 'queriesTab').img(:class, 'menuTabButton')}
      keyword(:set_query_starting_criteria_category) {content.select(:id, 'select.query.category.1')}
      keyword(:set_query_starting_criteria_query) {content.select(:id, 'select.query.1')}
      keyword(:query_preview_on_screen_title) {content.div(:class, 'pageSubtitle ng-binding')}
      keyword(:query_type_dynamic) {content.radio(:id, 'modalDynamic')}

      keyword(:journal_entry_type_selection) {content.div(:id, 'criteriaList').input(:value, 'label.contact')}

      keyword(:query_preview_results_count) {content.div(:id, 'resultCount')}
      keyword(:set_query_preview_search_field) {content.div(:class,'bb-search-container search-container').text_field(:placeholder, 'Search for Account Name')}
      keyword(:query_preview_search_magnifying_glass) {content.div(:class,'bb-search-container search-container').div(:class,'bb-search-icon fa fa-search')}
      keyword(:query_preview_clear_search_button) {content.button(:id,'clearSearchBtn')}
      keyword(:query_preview_choose_columns_button) {content.div(:class,'clearfix toolbar bb-table-toolbar').button(:class, 'btn bb-btn-secondary bb-grid-toolbar-btn bb-column-picker-btn')}
      # keyword(:column_picker_account_name) {content.div(:class, 'bb-checklist-list-title ng-binding')}
      keyword(:column_picker_account_name) {content.div(:class, 'bb-checklist-wrapper').div(:text, 'Account Name')}
      keyword(:column_picker_apply_changes_button) {content.div(:class,'modal-footer').button(:class, 'btn btn-primary')}
      keyword(:query_preview_journal_entry_grid) {content.div(:class, 'ui-jqgrid-bdiv')}
      # keyword(:query_preview_search_field_text) {content.div(:id,'')}
      keyword(:query_preview_restore_defaults_button) {content.div(:class,'clearfix toolbar bb-table-toolbar').button(:class, 'btn bb-btn-secondary bb-grid-toolbar-btn ng-binding ng-scope')}

      keyword(:query_favorites_tile_left){content.div(:class, 'taskPaneLeft')}
      keyword(:edit_query_definition_page) {content.div(:class, 'pageTitle')}
      keyword(:query_favorites_modal_text) {content.div(:class, 'bb-checklist-search').text_field(:placeholder, 'Search this list')}
      keyword(:close_favorites_modal) {content.div(:class, 'fa fa-times close')}
      keyword(:see_all_query_favorites_menu) {content.a(:id, 'queryMenuViewAllFavoritesLink')}
      keyword(:query_favorites_modal) {content.div(:id, 'favoritesHeader')}
      keyword(:mark_standard_query_as_favorite) {content.div(:id, 'addFavorite')}
      keyword(:remove_standard_query_from_favorites) {content.div(:id, 'removeFavorite')}
      keyword(:cancel_query_favorites_modal) {content.button(:id, 'favCancel')}
      keyword(:clear_search_query_favorites_modal) {content.button(:id, 'clearFavoritesSearch')}



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
        content.div(:class, 'ui-jqgrid-bdiv').a(:text, name)
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

      def favorite_query_link_click(name)
        content.div(:id, 'queryFavoritesSection').a(:text, name)
      end

      def query_preview_journal_entry_click(type, name)
        content.div(:id, 'et-query-grid-container').a(:text, name).parent.parent.parent.a(:text, type)
      end

      def edit_query_favorites_tile(value)
        content.a(:text, value)
      end

      def see_all_favorites (value)
        content.i(:text, value)
      end

      def preview_query_favorites_tile (name)
        content.div(:class, 'fauxFieldsetInner bb-tile-content').a(:text, name).parent.i(:class, 'fa fa-laptop')
      end

      def favorites_modal_preview_icon (name)
        content.div(:class, 'bb-repeater-component bb-repeater').a(:text, name).parent.i(:class, 'fa fa-laptop')
      end

      def edit_query_favorites_modal(value)
        content.div(:class, 'bb-repeater-component bb-repeater').a(:text, value)
      end

      def select_category_query_favorites_modal (name)
        content.header(:class, 'bb-repeater-item-header').a(:text, name)
      end

      def query_in_favorites_modal (name)
        content.div(:class, 'modal-content').a(:text, name)
      end

      def query_not_in_favorites_modal (name)
        content.div(:class, 'modal-content').a(:text, name)
      end




    end
  end
end
