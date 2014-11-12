module ETapestry
  module Approach
    class EditApproachView < BaseView
      private_keyword(:approach_link)    {|name| content.link(:text, /^#{name}/)}

      keyword(:name)         {content.text_field(:name, 'name')}
      keyword(:note)         {content.text_field(:name, 'note')}
      keyword(:goal)         {content.text_field(:name, 'goal')}
      keyword(:quantity)     {content.text_field(:name, 'quantity')}

      navigation_keyword(:save_button)      {content.button(:value, 'Save And')}

      def home(model)
        approach_link(model.name).click
      end
      alias :edit :home

      def create(model)
        content.link(:text, 'New Approach').click
      end

    end
  end
end
