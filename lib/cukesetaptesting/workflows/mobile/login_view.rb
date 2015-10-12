module Cukesetaptesting
  module Mobile
    class LoginView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }

      keyword(:user_name) { browser.text_field(:id=>'username')}
      keyword(:password) { browser.text_field(:id=>'password')}
      keyword(:login_button) { browser.button(:id=>'loginSubmit')}

      keyword(:home_button) { browser.image(:src=>/home.png/)}
      keyword(:search_button) { browser.image(:src=>/search.png/)}
      keyword(:logout_button) { browser.image(:src=>/logout.png/)}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
