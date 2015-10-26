module Cukesetaptesting
  module Account
    class RightsView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }

      def rights_group group_name
        content.label(:text => /#{group_name}/).radio
      end

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
