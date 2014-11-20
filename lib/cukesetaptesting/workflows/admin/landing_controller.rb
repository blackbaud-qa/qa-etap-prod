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
          #@view.logout_frame.link(:text, 'Logout').when_present.click
        @view.logout_link.when_present.click
       # end
      #  end

      end

      def home_click
        @view.home_tab.when_present.click
      end

      def accounts_click
        @view.accounts_tab.when_present.click
      end

      def giving_click
        @view.giving_tab.when_present.click
      end

      def communications_click
        @view.communications_tab.when_present.click
      end

      def queries_click
        @view.queries_tab.when_present.click
      end

      def reports_click
        @view.reports_tab.when_present.click
      end

      def management_click
        @view.management_tab.when_present.click
      end

      def close_browser
        @view.browser.close
      end

    end
  end
end

