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

      keyword(:journal_form) {content.div(:id,'journal')}
      keyword(:journal_table) {content.div(:class,'ui-jqgrid-bdiv')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
