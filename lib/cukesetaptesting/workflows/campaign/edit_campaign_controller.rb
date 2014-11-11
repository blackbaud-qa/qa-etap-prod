module ETapestry
  module Campaign
    class EditCampaign < BaseController
      @model = EditCampaignModel
      @view = EditCampaignView
      
      def populate_data
        populate_values
        submit
      end
      
    end
  end
end