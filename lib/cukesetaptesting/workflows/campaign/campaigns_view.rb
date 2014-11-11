module ETapestry
   module Campaign
     class CampaignsView < BaseView
        keyword(:campaigns)      {content.link(:text, 'Campaigns')}
      
      def home
        manage.click
        defined_fields.click
        campaigns.click
      end
    end
  end
end