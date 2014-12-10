module Cukesetaptesting
  module Communications
    class Createcategory < BaseController
      @model = CreatecategoryModel
      @view = CreatecategoryView

      def on_create_category_page?
        return @view.create_comms_category_title.when_present.text.include? 'Create Correspondence Category'
      end
    end
  end
end

