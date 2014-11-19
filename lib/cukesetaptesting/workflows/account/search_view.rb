module Cukesetaptesting
  module Account
    class SearchView < BaseView
      keyword(:search_field)  { content.text_field(:name => 'searchString') }
      keyword(:find_button) { content.button(:value => 'Find') }
      keyword(:table_content) { content.table(:id => 'etapreporttag1')}


      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
