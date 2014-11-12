module ETapestry
  module Approach
    class ApproachesView < BaseView
      keyword(:approaches)      {content.link(:text, 'Approaches')}

      def home
        manage.click
        defined_fields.click
        approaches.click
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
