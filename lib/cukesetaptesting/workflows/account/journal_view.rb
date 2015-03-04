module Cukesetaptesting
  module Account
    class JournalView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }
      keyword(:add_entry) {content.div(:id, 'etap.fieldset.table.2').select(:id, 'addEntry')}
      keyword(:transactions) {add_entry.option(:text, 'Gift/Pledge')}

      keyword(:gail_date_field) {content.div(:id, 'etapreporttag1_outerdiv').a(:href,'/prod/editJournalTransaction.do?entityRoleRef=39.0.3667&transactionRef=39.0.3666')}

      keyword(:split_transaction) {add_entry.option(:text, 'Split Transaction')}
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
