module Cukesetaptesting
  module Admin
    class Categories < BaseController
      @model = CategoriesModel
      @view = CategoriesView

      def on_user_defined_fields_page?
        return @view.categories_title.when_present.text.include? 'Edit User Defined Field Categories'
      end

      def on_relationship_types_page?
        return @view.categories_title.when_present.text.include? 'Relationship Types'
      end

      def on_note_types_page?
        return @view.categories_title.when_present.text.include? 'Sticky Note Types'
      end

      def on_funds_page?
        return @view.categories_title.when_present.text.include? 'Funds'
      end

      def on_campaigns_page?
        return @view.categories_title.when_present.text.include? 'Campaigns'
      end

      def on_approach_page?
        return @view.categories_title.when_present.text.include? 'Approaches'
      end

      def on_letters_page?
        return @view.categories_title.when_present.text.include? 'Letters'
      end



    end
  end
end

