module Cukesetaptesting
  module Communications
    class CreatetemplateView < BaseView
      keyword(:thank_you_category)  { comms_categories.a(:text, 'Thank You Letters') }
      keyword(:new_template) {comms_category.a(:text,'New Email or Document Template')}
      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

      def comms_categories
        content.div(:id,'correspondenceCategories')
      end

      def comms_category
        content.div(:id,'correspondenceCategory')
      end
    end
  end
end
