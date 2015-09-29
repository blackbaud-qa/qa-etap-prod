module Cukesetaptesting
  module Mobile
    class LoginView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }

      keyword(:user_name) { browser.text_field(:id=>'username')}
      keyword(:password) { browser.text_field(:id=>'password')}
      keyword(:login_button) { browser.button(:id=>'loginSubmit')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
