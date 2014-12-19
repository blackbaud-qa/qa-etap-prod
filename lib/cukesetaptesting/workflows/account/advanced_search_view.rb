module Cukesetaptesting
  module Account
    class AdvancedSearchView < BaseView
      #Search Keywords
      keyword(:search_field)  { content.text_field(:name => 'searchString') }
      keyword(:email_field)  { content.text_field(:name => 'email') }
      keyword(:find_button) { content.button(:value => 'Find') }
      keyword(:advanced_link) { content.link(:text=> 'Advanced Find') }
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
