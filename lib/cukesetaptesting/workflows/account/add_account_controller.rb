module Cukesetaptesting
  module Account
    class AddAccount < BaseController
      @model = AddAccountModel
      @view = AddAccountView

      def on_add_account_page?
        @view.add_account_element.when_present.present?
      end

      def find_screen_add_account_click
        @view.find_screen_add_account.when_present.click
      end

      def john_doe_link_click
        @view.john_doe_link.when_present.click
      end

      def other_link_click
        @view.other_link.when_present.click
      end

      def delete_role_button_click
        @view.delete_role_button.when_present.click
      end

      def yes_button_click
        @view.yes_button.when_present.click
      end

      end
    end
  end

