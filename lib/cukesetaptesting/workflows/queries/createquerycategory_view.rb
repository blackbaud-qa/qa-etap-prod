module Cukesetaptesting
  module Queries
    class CreatequerycategoryView < BaseView
      keyword(:create_comms_category_title)  { query_page.div(:class, 'pageTitle')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

      def query_page
        content.div(:id,'queryCategoryPage')
      end
    end
  end
end
