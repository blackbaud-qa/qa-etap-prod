module Cukesetaptesting
  module Account
    class SearchView < BaseView
      keyword(:search_field)  { content.text_field(:name => 'searchString') }
      keyword(:find_button) { content.button(:value => 'Find') }
      keyword(:exact_button) { content.button(:value => 'Exact Match') }
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
