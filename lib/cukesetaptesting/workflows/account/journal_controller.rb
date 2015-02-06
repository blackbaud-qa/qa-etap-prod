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

    end
  end
end

