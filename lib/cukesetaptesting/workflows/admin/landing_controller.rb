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

      def browser_url
        return @view.browser.url
      end

      def browser_popup_url
        return @view.browser.windows.last.url
      end

      def browser_popup_last
        return @view.browser.windows.last
      end

      def browser_popup_close
        @view.browser.windows.last.close
      end

      def home_click
        @view.home_tab.when_present.click
      end

      def home_dropdown_click
        @view.home_dd.when_present.click
      end

      def home_dd_go_home_click
        @view.home_dd_go_home.when_present.click
      end

      def home_dd_manage_preferences_click
        @view.home_dd_manage_preferences.when_present.click
      end

      def home_dd_find_account_click
        @view.home_dd_find_account.when_present.click
      end

      def home_dd_add_gift_click
        @view.home_dd_add_gift.when_present.click
      end

      def home_dd_manage_comms_click
        @view.home_dd_manage_comms.when_present.click
      end

      def home_dd_best_practices_click
        @view.home_dd_best_practices.when_present.click
      end

      def home_dd_give_feedback_click
        @view.home_dd_give_feedback.when_present.click
      end

      def home_dd_help_click
        @view.home_dd_help.when_present.click
      end

      def home_dd_scheduled_items_click
        @view.home_dd_scheduled_items.when_present.click
      end

      def home_dd_dropbox_click
        @view.home_dd_dropbox.when_present.click
      end

      def home_dd_wizard_click
        @view.home_dd_wizard.when_present.click
      end


      def accounts_click
        @view.accounts_tab.when_present.click
      end

      def accounts_dropdown_click
        @view.accounts_dd.when_present.click
      end

      def accounts_dd_find_account_click
        @view.accounts_dd_find_account.when_present.click
      end

      def accounts_dd_add_account_click
        @view.accounts_dd_add_account.when_present.click
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

      def on_home_page?
        @view.home_page.present?
      end

      def on_accounts_page?
        @view.accounts_page.present?
      end

      def on_giving_page?
        @view.giving_page.present?
      end

      def on_communications_page?
        @view.communications_page.present?
      end

      def on_queries_page?
        @view.queries_page.present?
      end

      def on_reports_page?
        @view.reports_page_title.when_present.text.include? "Report Categories"
      end

      def on_management_page?
        @view.management_page.present?
      end

      def close_browser
        @view.browser.close
      end

    end
  end
end

