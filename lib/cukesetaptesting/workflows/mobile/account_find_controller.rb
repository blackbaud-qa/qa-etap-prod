module Cukesetaptesting
  module Mobile
    class AccountFind < BaseController
      @model = AccountFindModel
      @view = AccountFindView

      def mobile_search_click
        @view.mobile_find_button.when_present.click
      end

      def click_account_name account_name
        @view.click_account_name account_name
      end
    end
  end
end

