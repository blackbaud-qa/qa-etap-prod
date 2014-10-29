module Cukesetaptesting
  module Admin
    class Landing < BaseController
      @model = LandingModel
      @view = LandingView

      def logged_in?
        return @view.browser.text.include?'Logout'
      end

      def log_out
        #if @view.logout_frame.exists? do
          @view.logout_frame.link(:text, 'Logout').click
       # end
      #  end

      end
    end
  end
end

