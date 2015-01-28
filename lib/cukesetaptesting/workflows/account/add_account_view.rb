module Cukesetaptesting
  module Account
    class AddAccountView < BaseView
      keyword(:add_account_element)  { content.form(:name, 'addAccountWizardForm') }
      keyword(:new_account_classic_name) {content.text_field(:id,'name_0')}
      keyword(:find_screen_add_account) {content.button(:value,'Add Account')}
      keyword(:new_account_classic_sort_name) {content.text_field(id, 'sortKey_0')}
      keyword(:new_account_classic_address_lines) {content.text_field(:id, 'address_0')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
