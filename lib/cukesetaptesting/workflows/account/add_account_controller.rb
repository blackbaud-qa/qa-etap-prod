module Cukesetaptesting
  module Account
    class AddAccount < BaseController
      @model = AddAccountModel
      @view = AddAccountView

      def on_add_account_page?
        @view.add_account_element.present?
      end

      def find_screen_add_account_click
        @view.find_screen_add_account.when_present.click
      end

      end
    end
  end

