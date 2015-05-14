module Cukesetaptesting
  module Account
    class AdvancedSearch < BaseController
      @model = AdvancedSearchModel
      @view = AdvancedSearchView

      def find_click
        @view.find_button.when_present.click
      end

      def advanced_click
        @view.advanced_link.when_present.click
      end

      def clear_email_field
        @view.email_field.when_present.clear
      end

      def clear_name_field
        @view.search_field.when_present.clear
      end

      def clear_phone_field
        @view.phone_field.when_present.clear
      end


      def exact_match_click
        @view.exact_button.when_present.click
      end

      def account_name_exists?(name)

        return @view.table_content.when_present.text.include? name

      end

      def search_field_contains?(text)
        return @view.search_field.when_present.value.include? text
      end

      def email_field_contains?(text)
        return @view.email_field.when_present.value.include? text
      end

      def click_magnifying_glass
        @view.dynamic_search_glass.when_present.click
      end

      def pause
        sleep 3
      end

      def choose_from_dynamic_drop_down
        @view.dynamic_drop_down_info.when_present.click
      end


    end
  end
end

