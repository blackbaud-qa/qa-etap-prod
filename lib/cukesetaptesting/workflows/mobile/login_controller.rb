module Cukesetaptesting
  module Mobile
    class Login < BaseController
      @model = LoginModel
      @view = LoginView

      def enter_user_name user_name
        @view.user_name.when_present.send_keys user_name
      end

      def enter_password password
        @view.password.when_present.send_keys password
      end

      def click_login_button
        @view.login_button.when_present.click
      end
    end
  end
end

