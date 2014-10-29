module Cukesetaptesting
  module Admin
    class Login < BaseController
      @model = LoginModel
      @view = LoginView

      def log_in
        @view.submit.click
      end

      def logged_out?
        return @view.submit.exists?
      end

      def login_nav
        @view.browser.goto "https://etap-cdev-fh.blackbaudhosting.com/prod/"
      end
    end
  end
end

