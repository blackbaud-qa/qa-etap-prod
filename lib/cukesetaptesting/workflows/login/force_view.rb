module Cukesetaptesting
  module Login
    class ForceView < Cukesetaptesting::BaseView
      keyword(:username)      {lightbox.text_field(:name, 'j_username')}
      keyword(:password)      {lightbox.text_field(:name, 'j_password')}
      keyword(:login_button)  {lightbox.button(:value, 'Yes')}

      def lightbox
        Page.browser.form(:name, 'forceLogin')
      end
    end
  end
end
