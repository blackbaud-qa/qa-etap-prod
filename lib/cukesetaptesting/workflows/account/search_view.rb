module Cukesetaptesting
  module Account
    class SearchView < BaseView
      #Search Keywords
      keyword(:search_field)  { content.text_field(:name => 'searchString') }
      keyword(:find_button) { content.button(:value => 'Find') }
      keyword(:exact_button) { content.button(:value => 'Exact Match') }
      keyword(:table_content) { content.table(:id => 'etapreporttag1')}
      #Role Keywords-  May be able to put this in its own class, but probably not necessary
      keyword(:role_icon) { table_content.img(:class => 'contextMenuActivation') }
      keyword(:role_menu) { content.div(:class, "contextMenu") }
      keyword(:role_menu_home) {role_menu.li(:class, "home") }
      keyword(:role_menu_personas) {role_menu.li(:class, "personas") }




      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
