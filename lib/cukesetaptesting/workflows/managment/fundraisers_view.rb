module Cukesetaptesting
  module Managment
    class FundraisersView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
