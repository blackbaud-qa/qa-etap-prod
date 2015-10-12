module Cukesetaptesting
  module Account
    class AccountHeader < BaseController
      @model = AccountHeaderModel
      @view = AccountHeaderView



      def defined_fields_page_click
        @view.defined_fields_page.when_present.click
      end

      def account_settings_page_click
        @view.account_settings_page.when_present.click
      end
    end
  end
end

