module Cukesetaptesting
  module Account
    class Journal < BaseController
      @model = JournalModel
      @view = JournalView

      def add_entry
        @view.transactions.when_present.click
      end

      def click_date
        @view.gail_date_field.when_present.click
      end

      def select_split_transaction
        @view.split_transaction.when_present.click
      end

      def wait_for_page_load
        @view.journal_form.wait_until_present
      end

      def journal_table_contains? document
        @view.journal_table.wait_until_present
        return @view.journal_table.text.include? document
      end

    end
  end
end

