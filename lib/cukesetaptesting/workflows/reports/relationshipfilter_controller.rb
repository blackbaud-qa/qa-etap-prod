module Cukesetaptesting
  module Reports
    class Relationshipfilter < BaseController
      @model = RelationshipfilterModel
      @view = RelationshipfilterView

      def on_relationship_filters_page?
        return @view.relationship_filter_title.when_present.text.include? 'Relationship Filters'
      end
    end
  end
end

