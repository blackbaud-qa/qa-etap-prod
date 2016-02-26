module Cukesetaptesting
  module Account
    class DynamicSearchView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }

      keyword(:dynamic_search_field) {content.div(:id, 'menuAccountSearch').input(:class, 'searchInput')}
      keyword(:dynamic_search_glass) {content.div(:id, 'menuAccountSearch').i(:class, 'searchIcon')}
      keyword(:dynamic_drop_down_info) {content.div(:id,'menuAccountSearch').li(:class,'searchItem')}
      keyword(:dynamic_drop_down_info_name) {content.div(:id,'menuAccountSearch').li(:class,'searchItem').span(:class,'searchItemName')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
