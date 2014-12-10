module Cukesetaptesting
  module Communications
    class CreatecategoryView < BaseView
      keyword(:create_comms_category_title)  { category_page.div(:class, 'pageTitle')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

      def category_page
        content.div(:id,'correspondenceCategory')
      end
    end
  end
end
