module ETapestry
  module Campaign
    class Campaigns < BaseController
      @model = CampaignsModel
      @view = CampaignsView
      
      def home
        @view.home
      end
      
    end
  end
end