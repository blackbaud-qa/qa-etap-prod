module Cukesetaptesting
  module DIY
    class OnlineformsView < BaseView
      keyword(:online_forms_title)  { forms.h2(:id,'title') }

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

      def forms
        content.div(:id,'ecommStyling')
      end
    end
  end
end
