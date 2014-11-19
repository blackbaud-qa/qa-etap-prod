module Cukesetaptesting
  module Account
    class Search < BaseController
      @model = SearchModel
      @view = SearchView

      def find_click
        @view.find_button.when_present.click
      end

      def account_name_exists?(name)

        return @view.table_content.when_present.text.include? name

      end

    end

  end
end

