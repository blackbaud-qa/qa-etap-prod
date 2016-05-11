module Cukesetaptesting
  module Account
    require_relative 'generic_search_controller'

    class AdvancedSearch < GenericSearch
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

      def search_field_contains?(text)
        return @view.search_field.when_present.value.include? text
      end

      def email_field_contains?(text)
        return @view.email_field.when_present.value.include? text
      end

      def account_name_exists?(input_name)
        # Call it in the base class
        super
      end

      def search_result_count_message
        @view.search_result_count_message.when_present.text
      end

      def on_find_account_page?(text)
        return @view.find_account_page.when_present.value.include? text
      end

      def udf_show_hide(value)
        @view.udf_show_hide_links(value).when_present.click
      end

      def address_field_contains?(text)
        return @view.address_field.when_present.value.include? text
      end

      def add_account_advanced_find
        @view.add_an_account.when_present.click
      end
    end
  end
end

