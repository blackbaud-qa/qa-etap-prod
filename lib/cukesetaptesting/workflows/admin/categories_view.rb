module Cukesetaptesting
  module Admin
    class CategoriesView < BaseView
      keyword(:categories_title)  { content.div(:class,'pageTitle') }

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
