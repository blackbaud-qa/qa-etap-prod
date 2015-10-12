module Cukesetaptesting
  module Mobile
    class JournalView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }

      def click_journal_entry je_index
        je_index = je_index.to_i - 1

        browser.section(:id => 'journalEntries').ul(:class => 'dataList').li(:index => je_index).link.when_present.click
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
