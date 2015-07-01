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

      def choose_two_equal_column_layout
        @view.two_equal_column_layout.set
      end

      def two_same_column_size
        left = @view.left_column.size
        right = @view.right_column.size
        return left + right
      end

      def click_link_on_campaign_performance_tile(value)
        @view.link_on_campaign_performance_tile(value).when_present.click
      end

      def set_date_campaign_performance_tile(value)
        @view.date_on_campaign_performance_tile.when_present.select(value)
      end

      def click_update_camp_performance_tile
        @view.update_camp_performance_tile.when_present.click
      end

      def camp_perform_full_report_screen?(message)
        sleep 3
        @view.perform_full_report_results.when_present.text.include? message
      end

      def camp_perform_date_range_description?(message)
        sleep 1
        @view.camp_perform_date_range_label.when_present.text.include? message
      end





    end
  end
end

