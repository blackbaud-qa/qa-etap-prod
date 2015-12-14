module Cukesetaptesting
  module Account
    class SearchView < BaseView
      #Search Keywords
      keyword(:search_field)  { content.text_field(:name => 'searchString') }
      keyword(:email_field)  { content.text_field(:name => 'email') }
      keyword(:find_button) { content.button(:value => 'Find') }
      keyword(:advanced_link) { content.link(:text=> 'Advanced Find') }
      keyword(:exact_button) { content.button(:value => 'Exact Match') }
      keyword(:table_content) { content.table(:id => 'etapreporttag1')}
      #Role Keywords-  May be able to put this in its own class, but probably not necessary
      keyword(:role_icon) { table_content.img(:class => 'contextMenuActivation') }
      keyword(:role_menu) { content.div(:class, "contextMenu") }
      keyword(:role_menu_home) {role_menu.li(:class, "home").a }
      keyword(:role_menu_personas) {role_menu.li(:class, "personas").a }
      keyword(:role_menu_relationships) {role_menu.li(:class, "relationships").a}
      keyword(:role_menu_journal) {role_menu.li(:class, "journal").a}
      keyword(:role_menu_other) {role_menu.a(:text, "Account Settings")}
      keyword(:role_menu_defined_fields) {role_menu.li(:class, "definedFields").a}
      keyword(:gift_box_icon) {content.div(:id, 'etapreporttag1_outerdiv').img(:src, 'images/gift16.gif')}
      keyword(:new_gift_and_pledge_page) {content.form(:name, 'journalGiftForm')}
      keyword(:state_field) {content.text_field(:id, 'state')}
      keyword(:address_lines_field) {content.text_field(:id, 'address')}

      keyword(:constituents_checkbox) { content.checkbox(:name, 'showCustomersBox') }
      keyword(:users_checkbox) { content.checkbox(:name, 'showUsersBox') }
      keyword(:tributes_checkbox) { content.checkbox(:name, 'showTributesBox') }
      keyword(:teams_checkbox) { content.checkbox(:name, 'showTeamsBox') }

      keyword(:move_values_link) { content.a(:class, 'taskLink') }
      keyword(:move_business_value) { content.label(:text, 'Business') }
      keyword(:move_value_to_attributes) { content.label(:text, 'Attributes')}
      keyword(:move_button) {content.input(:value, 'Move')}
      keyword(:attributes_udf) {content.a(:text, 'Attributes')}
      keyword(:move_value_to_account_type) {content.label(:text, 'Account Type')}
      keyword(:edit_user_defined_field_categories_page) {content.a(:href, 'ImportMenu.jsp')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
