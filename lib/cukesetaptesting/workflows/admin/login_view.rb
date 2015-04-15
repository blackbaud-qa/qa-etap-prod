module Cukesetaptesting
  module Admin
    class LoginView < BaseView
      keyword(:username) {browser.text_field(:name => 'j_username')}
      keyword(:password) {browser.text_field(:name => 'j_password')}
      keyword(:submit) {browser.button(:id => 'loginSubmit')}

      keyword(:hidden_noUsername_text) {browser.h2(:id => 'noUsernameText', :class => 'invalidText hidden')}
      keyword(:hidden_noPassword_text) {browser.h2(:id => 'noPasswordText', :class => 'invalidText hidden')}
      keyword(:noUsername_text) {browser.h2(:id => 'noUsernameText')}
      keyword(:noPassword_text) {browser.h2(:id => 'noPasswordText')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
