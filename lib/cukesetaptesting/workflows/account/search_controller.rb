module Cukesetaptesting
  module Account
    class Search < BaseController
      @model = SearchModel
      @view = SearchView

      def find_click
        @view.find_button.when_present.click
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

      def press_enter
        @view.browser.send_keys :enter
      end

    end

  end
end

