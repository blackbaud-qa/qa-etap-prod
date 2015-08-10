module Cukesetaptesting
  module Account
    class JournalView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }
      keyword(:add_entry) {content.div(:id, 'etap.fieldset.table.2').select(:id, 'addEntry')}
      keyword(:transactions) {add_entry.option(:text, 'Gift/Pledge')}
      ### View drop-down
      keyword(:journal_view) { content.div(:class => 'criteria add').select(:id => 'view') }
      keyword(:list_view)               { journal_view.option(:index => 0) }  # List View
      keyword(:split_view)              { journal_view.option(:index => 1) }  # Split View
      keyword(:household_list_view)     { journal_view.option(:index => 2) }  # Household List View
      keyword(:household_split_view)    { journal_view.option(:index => 3) }  # Household Split View
      keyword(:calendar_view)           { journal_view.option(:index => 4) }  # Calendar View

      ### Add New drop-down
      keyword(:add_new_journal_entry)   { content.div(:class => 'criteria add').select(:id => 'addEntry') }
      keyword(:gift_pledge)             { add_new_journal_entry.optgroup(:index => 0).option(:index => 0) }  # Gift Pledge
      keyword(:pledge_payment)          { add_new_journal_entry.optgroup(:index => 0).option(:index => 1) }  # Pledge Payment
      keyword(:split_transaction)       { add_new_journal_entry.optgroup(:index => 0).option(:index => 2) }  # Split Transaction
      keyword(:recurring_gift_schedule) { add_new_journal_entry.optgroup(:index => 0).option(:index => 3) }  # Recurring Gift Schedule
      keyword(:recurring_gift)          { add_new_journal_entry.optgroup(:index => 0).option(:index => 4) }  # Recurring Gift
      keyword(:soft_credit)             { add_new_journal_entry.optgroup(:index => 0).option(:index => 5) }  # Soft Credit
      keyword(:disbursement)            { add_new_journal_entry.optgroup(:index => 0).option(:index => 6) }  # Disbursement

      keyword(:note)                    { add_new_journal_entry.optgroup(:index => 1).option(:index => 0) }  # Note
      keyword(:contact)                 { add_new_journal_entry.optgroup(:index => 1).option(:index => 1) }  # Contact
      keyword(:planned_giving)          { add_new_journal_entry.optgroup(:index => 1).option(:index => 2) }  # Planned Giving

      keyword(:calendar_item)           { add_new_journal_entry.optgroup(:index => 2).option(:index => 0) }  # Calendar Item


      keyword(:gail_date_field) {content.div(:id, 'etapreporttag1_outerdiv').a(:href,'/prod/editJournalTransaction.do?entityRoleRef=39.0.3667&transactionRef=39.0.3666')}

      #OTG_INTL keyword(:split_transaction) {add_entry.option(:text, 'Split Transaction')}
      keyword(:split_transaction) {add_entry.option(:value, 'addSegmentedHeaderTransaction.do?type=Gift&entityRoleRef=ER_REF')}
      keyword(:journal_form) {content.form(:name,'entityJournalForm')}
      keyword(:journal_table) {content.table(:id,'entryList')}


      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
