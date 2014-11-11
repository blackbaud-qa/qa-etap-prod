module ETapestry
  module Campaign
    EditCampaignModel = Watirmark::Model.factory do
      keywords EditCampaignView.keywords
      defaults do
        name {"campaign_#{uuid}"}
      end
    end
  end
end