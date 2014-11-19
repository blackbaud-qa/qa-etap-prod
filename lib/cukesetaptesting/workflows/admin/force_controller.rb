module Cukesetaptesting
  module Admin
    class Force < BaseController
      @model = ForceModel
      @view = ForceView

      def log_in
        @view.login_button.when_present.click
      end
    end
  end
end

