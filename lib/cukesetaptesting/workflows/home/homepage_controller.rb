module Cukesetaptesting
  module Home
    class Homepage < BaseController
      @model = HomepageModel
      @view = HomepageView

      def click_delete_tile
        expect(@view.delete_specific_tile :tileWebpage).to eq(true)

=begin
        @view.delete_specific_tile :tileMyMission
        @view.delete_specific_tile :tileMyCalendar
        @view.delete_specific_tile :tileMyOrgCalendar
        @view.delete_specific_tile :tileRecentlyViewedAccounts
        @view.delete_specific_tile :tileQuickLinks
        @view.delete_specific_tile :tileHelpTutorials
        @view.delete_specific_tile :tileRecentQueriesReports
        @view.delete_specific_tile :tileFavorites
        @view.delete_specific_tile :tileSupportResources
        @view.delete_specific_tile :tileTopDonors
        @view.delete_specific_tile :tileCampaignPerformance
        @view.delete_specific_tile :tileApproachPerformance
        @view.delete_specific_tile :tileFundraiserPerformance
        @view.delete_specific_tile :tileRecentGifts
        @view.delete_specific_tile :tileGoalPerformance
        @view.delete_specific_tile :tileChronOfPhilanthropy
  #      @view.delete_specific_tile :tileGrantSpy
        @view.delete_specific_tile :tileNYTimes
        @view.delete_specific_tile :tileDMNews
        @view.delete_specific_tile :tileCNNHeadlines
        @view.delete_specific_tile :tileFoxNewsHeadlines
        @view.delete_specific_tile :tileABCNewsHeadlines
        @view.delete_specific_tile :tileWebpage
        @view.delete_specific_tile :tileMyOrgWebsite
        @view.delete_specific_tile :tileRSSFeed
=end
      end

      def move_top_donors_tile

#        @view.move_specific_tile_by_direction :tileTopDonors, :left
        @view.move_specific_tile_onto_tile :tileTopDonors, :tileQuickLinks
      end

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
        @view.dashboard_tile_recently_viewed_accounts_checkbox.when_present.set
      end

      def dashboard_tile_add_recently_viewed_accounts_tile
        @view.dashboard_tile_recently_viewed_accounts_tile.wait_until_present
        return @view.dashboard_tile_recently_viewed_accounts_tile.present?
        # sleep 5
        # return @view.content.text.include? /Recently Viewed Accounts/
      end

      def dashboard_tiles_recently_present?
        # puts "/"+text+"/"
        sleep 3
        return @view.content.div(:id,'mainContent').div(:id,'tile200').present?
      end

      def dashboard_tile_remove_recently_viewed_accounts_click
        # begin
        # browser.after_hooks.without do |browser|
        @view.browser.without_checkers do
          @view.browser.execute_script('arguments[0].scrollIntoView();',@view.dashboard_tile_remove_recently_viewed_accounts)
          @view.dashboard_tile_remove_recently_viewed_accounts.when_present.click
          sleep 1
        end
        # rescue
          # @view.browser.alert.ok
        # end
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

