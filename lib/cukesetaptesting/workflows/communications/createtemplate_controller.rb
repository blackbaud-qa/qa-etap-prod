module Cukesetaptesting
  module Communications
    class Createtemplate < BaseController
      @model = CreatetemplateModel
      @view = CreatetemplateView

      def thank_you_category_click
        @view.thank_you_category.click
      end

      def new_template_click
        @view.new_template.click
      end
    end
  end
end

