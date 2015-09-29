module Cukesetaptesting
  module Mobile
    class Journal < BaseController
      @model = JournalModel
      @view = JournalView

      def click_journal_entry je_index
        @view.click_journal_entry je_index
      end
    end
  end
end

