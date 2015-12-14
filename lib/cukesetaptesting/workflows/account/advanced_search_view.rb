module Cukesetaptesting
  module Account
    class AdvancedSearchView < BaseView
      #Search Keywords
      keyword(:search_field)  { content.text_field(:name => 'searchString') }
      keyword(:email_field)  { content.text_field(:name => 'email') }
      keyword(:phone_field) {content.text_field(:name, 'phone')}
      #DEV_HELP
      keyword(:find_button) { content.button(:value => 'Find') }
      #DEV_HELP
      keyword(:advanced_link) { content.link(:text=> 'Advanced Find') }
      #DEV_HELP
      keyword(:exact_button) { content.button(:value => 'Exact Match') }
      keyword(:table_content) { content.table(:id => 'etapreporttag1')}

      #dynamic_search
      keyword(:dynamic_search_field) {content.div(:id, 'menuAccountSearch').input(:class, 'searchInput')}
      keyword(:dynamic_search_glass) {content.div(:id, 'menuAccountSearch').img(:class, 'searchIcon')}
      keyword(:dynamic_drop_down_info) {content.div(:id,'menuAccountSearch').li(:class,'searchItem')}
      keyword(:dynamic_drop_down_info_name) {content.div(:id,'menuAccountSearch').li(:class,'searchItem').span(:class,'searchItemName')}
      keyword(:find_account_page) {content.div(:class,'pageTitle')}

      def udf_show_hide_links(value)
        content.div(:id, 'userDefinedFieldsTitleBar').a(:text, value)
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
