module Cukesetaptesting
  module Account
    class JournalView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }
      keyword(:add_entry) {content.div(:id, 'etap.fieldset.table.2').select(:id, 'addEntry')}
      keyword(:transactions) {add_entry.option(:text, 'Gift/Pledge')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
