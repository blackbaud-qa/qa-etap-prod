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
    end
  end
end

