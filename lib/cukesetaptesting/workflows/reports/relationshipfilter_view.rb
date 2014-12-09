module Cukesetaptesting
  module Reports
    class RelationshipfilterView < BaseView
      keyword(:relationship_filter_title)  {relationship_page.div(:class,'pageTitle')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

      def relationship_page
        content.div(:id,'relationshipFiltersPage')
      end
    end
  end
end
