module ETapestry
   module Campaign
     class EditCampaignView < BaseView
       private_keyword(:campaign_link)    {|name| content.link(:text, /^#{name}/)}

       keyword(:name)         {content.text_field(:name, 'name')}
       keyword(:note)         {content.text_field(:name, 'note')}
       keyword(:goal)         {content.text_field(:name, 'goal')}
       keyword(:quantity)     {content.text_field(:name, 'quantity')}
       
       navigation_keyword(:save_button)      {content.button(:value, 'Save And')}
       
         
      def create(model=nil)
        content.link(:text, 'New Campaign').click
      end
      
      def home(model)
        campaign_link(model.name).click
      end
      alias :edit :home
      
     end
   end
end