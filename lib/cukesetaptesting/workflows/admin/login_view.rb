module Cukesetaptesting
  module Admin
    class LoginView < BaseView
      keyword(:username) {browser.text_field(:name => 'j_username')}
      keyword(:password) {browser.text_field(:name => 'j_password')}
      keyword(:submit) {browser.button(:id => 'loginSubmit')}
      #keyword(:logout_frame) {browser.iframe(:name, "content")}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
