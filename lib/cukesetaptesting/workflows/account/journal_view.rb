module Cukesetaptesting
  module Account
    class JournalView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }
      #keyword(:add_entry) {content.div(:id, 'etap.fieldset.table.2').select(:id, 'addEntry')}
      keyword(:add_entry) {content.button(:id=>'add-entry-button')}
#      keyword(:transactions) {add_entry.option(:text, 'Gift/Pledge')}
      # Gift/Pledge:
      keyword(:gift_pledge) {content.div(:class=>/et-journal-add-trans-section/).div(:index=>0).link}
      # Pledge Payment:
      keyword(:pledge_payment) {content.div(:class=>/et-journal-add-trans-section/).div(:index=>1).link}
      # Split Transaction:
      keyword(:split_transaction) {content.div(:class=>/et-journal-add-trans-section/).div(:index=>2).link}
      # Recurring Gift Schedule:
      keyword(:recurring_gift_schedule) {content.div(:class=>/et-journal-add-trans-section/).div(:index=>3).link}
      # Recurring Gift:
      keyword(:recurring_gift) {content.div(:class=>/et-journal-add-trans-section/).div(:index=>4).link}
      # Soft Credit:
      keyword(:soft_credit) {content.div(:class=>/et-journal-add-trans-section/).div(:index=>5).link}
      # Disbursement:
      keyword(:disbursement) {content.div(:class=>/et-journal-add-trans-section/).div(:index=>6).link}

      # Note:
      keyword(:note) {content.div(:class=>/et-journal-add-non-trans-section/).div(:index=>0).link}
      # Contact:
      keyword(:contact) {content.div(:class=>/et-journal-add-non-trans-section/).div(:index=>1).link}
      # Participation:
      keyword(:participation) {content.div(:class=>/et-journal-add-non-trans-section/).div(:index=>2).link}
      # Planned Giving:
      keyword(:planned_giving) {content.div(:class=>/et-journal-add-non-trans-section/).div(:index=>3).link}
      # Calendar Item:
      keyword(:calendar_item) {content.div(:class=>/et-journal-add-non-trans-section/).div(:index=>4).link}

      ### View drop-down
      keyword(:journal_view) { content.div(:class => 'criteria add').select(:id => 'view') }
      keyword(:list_view)               { journal_view.option(:index => 0) }  # List View
      keyword(:split_view)              { journal_view.option(:index => 1) }  # Split View
      keyword(:household_list_view)     { journal_view.option(:index => 2) }  # Household List View
      keyword(:household_split_view)    { journal_view.option(:index => 3) }  # Household Split View
      keyword(:calendar_view)           { journal_view.option(:index => 4) }  # Calendar View

      keyword(:gail_date_field) {content.div(:id, 'etapreporttag1_outerdiv').a(:href,'/prod/editJournalTransaction.do?entityRoleRef=39.0.3667&transactionRef=39.0.3666')}

      keyword(:journal_form) {content.div(:css, 'div[ng-if="journal.isDataLoaded"]')}
      keyword(:journal_table) {content.div(:class,'ui-jqgrid-bdiv')}

      keyword(:first_attachment_file_size_modal_view) {content.div(:class, 'modal-content').span(:id, 'attachmentsInfo_0')}
      keyword(:second_attachment_file_size_modal_view) {content.div(:class, 'modal-content').span(:id, 'attachmentsInfo_1')}
      keyword(:attachments_modal_gray_x)  {content.div(:class, 'modal-content').div(:class, 'fa fa-times close')}
      keyword(:attachment_information_section) {content.div(:id, 'attachmentFieldsTitleBar')}
      keyword(:attachments_choose_file_button) {content.file_field(:id, 'attachmentUploadFile')}
      keyword(:attachments_upload_button) {content.button(:value, 'Upload')}

      keyword(:click_query_page_two) {content.div(:class, 'bb-grid-pagination-container ng-scope').a(:index=>2)}
      keyword(:click_query_page_one) {content.div(:class, 'bb-grid-pagination-container ng-scope').a(:index=>1)}
      keyword(:add_an_account_button) {content.div(:id, 'accountActions').button(:id, 'addAccountButton')}
      keyword(:journal_load_more) {content.div(:class, 'bb-table-loadmore ng-scope').button(:class, 'btn btn-link ng-binding')}
      keyword(:journal_page_journal_entry_grid) {content.div(:class, 'ui-jqgrid-bdiv')}

      ## Journal
      keyword(:journal_choose_columns) {content.button(:css,'[data-bbauto-field="ColumnPickerButton"]')}
      keyword(:journal_column_picker_tribute) {content.div(:css ,'[data-bbauto-field="specialSelectableColumn-et-plus-tribute"]')}
      keyword (:journal_soft_credit)  {content.div(:css,'[data-bbauto-field="specialSelectableColumn-et-plus-softCreditName"]')}
      keyword (:journal_checkbox_modified_date) {content.div(:css,'[data-bbauto-field="systemDefinedSelectableColumn-et-plus-modifiedDate"]')}
      keyword(:journal_apply_changes) {content.button(:class, 'btn btn-primary ng-scope').span(:class, 'ng-binding ng-scope')}
      keyword(:confirm_tribute_column) {content.div(:text,'Tribute')}
      keyword (:confirm_soft_credit_column)  {content.div(:xpath,'//div[text()="Soft Credit"]')}
      keyword (:confirm_modified_date_column) {content.div(:xpath,'//div[text()="Last Modified Date"]')}
      keyword (:journal_search_field) {content.div(:class, 'bb-checklist-search').text_field(:class, 'bb-checklist-search-box')}
      keyword (:journal_checkbox_add_column) {content.div(:class, 'bb-checklist-list-row').label(:class, 'bb-check-wrapper')}


      def account_name(value)
        content.a(:text=>value)
      end

      def confirm_last_modified_date(value)
        content.div(:text=>value)
      end

      def journal_attachment_link(value)
        content.div(:class,'ui-jqgrid-bdiv').a(:text, value)
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
