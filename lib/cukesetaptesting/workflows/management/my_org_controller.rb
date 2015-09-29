module Cukesetaptesting
  module Management
    class MyOrg < BaseController
      @model = MyOrgModel
      @view = MyOrgView

    def save_and_personas_click
      browser.without_checkers do
        @view.save_and_personas.when_present.click
      end
    rescue

    end

    def federal_id
      return @view.federal_id.value
    end

    def my_org_prefs_click
      @view.my_org_prefs.when_present.click
    end

    def error_includes? error
      if (@view.browser.alert.exists?)
        @text = @view.browser.alert.text

        return @text.include? error
      end
      return false
    end

      def error_close
        if (@view.browser.alert.exists?)
          @view.browser.alert.ok
        end
        @view.browser.run_checkers
      end

      def iban_field
        return @view.IBAN.value
      end

      def bic_field
        return@view.BIC.value
      end

      def cancellation_terms_field
        return @view.cancellation_terms.value
      end

      def export_batch_size_field
        return @view.export_batch_size.value
      end

      def bank_account_number_field
        return @view.bank_account_number.value
      end

      def rec_trans_desc_field
        return @view.rec_trans_desc.value
      end

      def org_short_name_field
        return @view.org_short_name.value
      end

    end
  end
end

