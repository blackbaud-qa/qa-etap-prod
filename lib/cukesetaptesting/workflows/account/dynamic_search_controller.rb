module Cukesetaptesting
  module Account
    class DynamicSearch < BaseController
      @model = DynamicSearchModel
      @view = DynamicSearchView

      def pause
        sleep 3
      end

      def click_magnifying_glass
        @view.dynamic_search_glass.when_present.click
      end

      def dynamic_drop_down?
        @view.dynamic_drop_down_info.when_present.present?
      end

      def dynamic_drop_down_results(name)
        @view.dynamic_drop_down_info_name.when_present.value.include? name
      end
    end
  end
end

