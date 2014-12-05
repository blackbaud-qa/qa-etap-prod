module Cukesetaptesting
  module Admin
    class GetstartedwizardView < BaseView
      keyword(:wizard_title)  { content.div(:class, 'pageTitle') }
      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
