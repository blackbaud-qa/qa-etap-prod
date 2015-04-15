module Cukesetaptesting
  module Admin
    class Force < BaseController
      @model = ForceModel
      @view = ForceView

      def get_duplicate_login_message
        @view.duplicate_login_message
      end

      def lightbox_is_present?
        @view.lightbox.present?
      end

      def username=(val)
        @view.username = val
      end

      def password=(val)
        @view.password = val
      end

      def log_in
        @view.login_button.when_present.click
      end
    end
  end
end

