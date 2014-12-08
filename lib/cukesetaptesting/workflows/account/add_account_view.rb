module Cukesetaptesting
  module Account
    class AddAccountView < BaseView
      keyword(:add_account_element)  { content.form(:name, 'addAccountWizardForm') }

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
