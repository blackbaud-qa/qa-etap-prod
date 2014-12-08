module Cukesetaptesting
  module Account
    class AddAccount < BaseController
      @model = AddAccountModel
      @view = AddAccountView

      def on_add_account_page?
        @view.add_account_element.present?
      end
    end
  end
end

