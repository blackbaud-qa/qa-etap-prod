module Cukesetaptesting
  module Home
    class Homepage < BaseController
      @model = HomepageModel
      @view = HomepageView


      def is_present?
        @view.take_me_to_etap_iframe.present?
      end

      def click_take_me_to_etap
        begin
          @view.take_me_to_etap_iframe.when_present.click
        rescue Exception => e
            pp e
        end
      end


      def dashboard_tile_add_recently_viewed_accounts_click
        @view.dashboard_tile_recently_viewed_accounts_checkbox.when_present.click
      end

      def dashboard_tile_add_recently_viewed_accounts_tile
        @view.dashboard_tile_recently_viewed_accounts_tile.present?
      end

      def dashboard_tile_remove_recently_viewed_accounts_click
        begin
          @view.dashboard_tile_remove_recently_viewed_accounts.when_present.click
        rescue
          browser.alert.ok
        end
      end








    end
  end
end

