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

      def log_in_without_force
        @view.submit.when_present.click
      end

      def is_username_error_present?
        if @view.hidden_noUsername_text.present?
          return false
        end
      end

      def username_error
        return @view.noUsername_text.when_present
      end

      def is_password_error_present?
        if @view.hidden_noPassword_text.present?
          return false
        end
      end

      def password_error
        return @view.noPassword_text.when_present
      end

      def is_duplicate_login_message_present?
        return @view.duplicate_login_message.present?
      end

      def duplicate_login_message
        return @view.duplicate_login_message.when_present.value
      end

      def logged_out?
        return @view.submit.exists?
      end

      def login_nav
        @view.browser.goto Watirmark::Configuration.instance.site_url
      end

      def login_nav_kr
        @view.browser.goto Watirmark::Configuration.instance.site_url_knight_rider
      end

      def login_nav_mobile
        @view.browser.goto Watirmark::Configuration.instance.site_url_mobile
      end
    end
  end
end

