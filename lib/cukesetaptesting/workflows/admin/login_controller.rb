module Cukesetaptesting
  module Admin
    class Login < BaseController
      @model = LoginModel
      @view = LoginView

      def log_in
        @view.submit.when_present.click

        if ForceView.new.lightbox.present?
         force = Admin::Force.new(@model)
         force.create
         force.log_in
        end
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

