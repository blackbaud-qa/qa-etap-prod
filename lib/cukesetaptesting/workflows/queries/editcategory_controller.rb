module Cukesetaptesting
  module Queries
    class Editcategory < BaseController
      @model = EditcategoryModel
      @view = EditcategoryView

      def on_edit_base_page?
        return @view.query_edit_title.when_present.text.include? 'Edit Query Category : Base'
      end

      def on_edit_journal_page?
        return @view.query_edit_title.when_present.text.include? 'Edit Query Category : Journal Entry Date'
      end

      def on_edit_constit_journal_page?
        return @view.query_edit_title.when_present.text.include? 'Edit Query Category : Constituent Journal Entry Date'
      end

      def on_edit_lybunt_page?
        return @view.query_edit_title.when_present.text.include? 'Edit Query Category : LYBUNT & SYBUNT'
      end

      def on_edit_pledges_payments_page?
        return @view.query_edit_title.when_present.text.include? 'Edit Query Category : Pledges and Payments'
      end

      def on_edit_proc_transactions_page?
        return @view.query_edit_title.when_present.text.include? 'Edit Query Category : Processed Transactions'
      end

      def on_edit_security_page?
        return @view.query_edit_title.when_present.text.include? 'Edit Query Category : eTapestry Security'
      end
    end
  end
end

