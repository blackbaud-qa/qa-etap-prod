module Cukesetaptesting
  module Account
    class AccountHeaderView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }

      keyword(:defined_fields_page) {content.div(:id, 'topMenu').a(:text, 'Defined Fields')}
      keyword(:account_settings_page) {content.div(:id, 'topMenu').a(:text, 'Account Settings')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
