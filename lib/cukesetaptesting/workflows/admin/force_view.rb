module Cukesetaptesting
  module Admin
    class ForceView < BaseView
      #keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }
      keyword(:username)      {lightbox.text_field(:name, 'j_username')}
      keyword(:password)      {lightbox.text_field(:name, 'j_password')}
      keyword(:login_button)  {lightbox.button(:value, 'Yes')}

      keyword(:duplicate_login_message) {browser.span(:text => 'That login id is already logged in.').text}

      def lightbox
        Page.browser.form(:name, 'forceLogin')
      end

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
