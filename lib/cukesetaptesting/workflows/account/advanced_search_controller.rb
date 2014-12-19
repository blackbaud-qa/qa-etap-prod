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

    end
  end
end

