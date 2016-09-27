module Cukesetaptesting
  module Account
    class SearchView < BaseView
      #Search Keywords
      keyword(:search_field)  { content.text_field(:name => 'searchString') }
      keyword(:email_field)  { content.text_field(:name => 'email') }
      def find_button
        # 0 - indicates that Basic search is visible and advanced is hidden
        active_li = content.li(:class=>'ng-isolate-scope active')
        quick_is_active = active_li.link(:text=>'Quick Find').exists?

        if quick_is_active
          content.div(:id => 'quickSearchFields').button(:value => 'Find')
        else
          content.form(:id=>'advancedSearchForm').div(:id => 'quickSearchFields').button(:value => 'Find')
        end
      end

      keyword(:advanced_link) { content.link(:text=> 'Advanced Find') }
      keyword(:exact_button) { content.div(:id => 'quickSearchFields').button(:value => 'Exact Match') }
      keyword(:table_content) { content.table(:id => /bbgrid-table-/)}

   #   keyword(:account_name) { table_content.tr(:index => 1).td(:index => 2)}
      def account_name index_value
        table_content.tr(:index => index_value).td(:index => 2)
      end

      keyword(:search_result_count_message) { content.div(:id=>'searchResultCount').span}
      #Role Keywords-  May be able to put this in its own class, but probably not necessary
      keyword(:role_icon) { table_content.img(:class => 'contextMenuActivation') }
      def role_icon_by_account_name account_name
        account_trs = table_content.trs

        proper_table_row = nil
        table_content.trs(:id=>/bb-grid-row/).each do |tr|
          if tr.td(:index=>2).text.include? account_name
            proper_table_row = tr
            break
          end
        end

        proper_table_row.td(:index=>0).div.button(:class=>/bb-context-menu-btn/)
      end

      def role_menu
        content.ul(:css => '[style*="display: block;"]')
      end
      keyword(:role_menu_home) {role_menu.li(:index=>0).link }
      keyword(:role_menu_personas) {role_menu.li(:index=>1).link }
      keyword(:role_menu_relationships) {role_menu.li(:index=>2).link }
      keyword(:role_menu_journal) {role_menu.li(:index=>3).link }
      keyword(:role_menu_other) {role_menu.li(:index=>4).link }
      # keyword(:role_menu_defined_fields) {role_menu.li(:index=>5) }
      keyword(:role_menu_defined_fields) {content.span(:text,'View Defined Fields') }
      keyword(:gift_box_icon) {content.div(:id, 'etapreporttag1_outerdiv').img(:src, 'images/gift16.gif')}
      keyword(:new_gift_and_pledge_page) {content.form(:name, 'journalGiftForm')}
      keyword(:adv_find_state_field) {content.text_field(:id, 'state')}
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
