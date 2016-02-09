module Cukesetaptesting
  module Admin
    class LoginView < BaseView
      keyword(:username) {browser.text_field(:name => 'j_username')}
      keyword(:password) {browser.text_field(:name => 'j_password')}
      keyword(:submit) {browser.button(:id => 'loginSubmit')}

      keyword(:noUsername_text) {browser.div(:id => 'noUsernameText')}
      keyword(:noPassword_text) {browser.div(:id => 'noPasswordText')}
      keyword(:badPasswordAttempt_text) {browser.div(:id => 'badAttemptText')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
