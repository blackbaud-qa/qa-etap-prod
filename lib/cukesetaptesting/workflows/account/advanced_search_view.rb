module Cukesetaptesting
  module Account
    class AdvancedSearchView < BaseView
      #Search Keywords
      keyword(:search_field)  { content.div(:id=>'advancedSearchFields').text_field(:id => 'advancedSearchString') }
      keyword(:email_field)  { content.div(:id=>'advancedSearchFields').text_field(:id => 'email') }
      keyword(:phone_field) {content.div(:id=>'advancedSearchFields').text_field(:id, 'phone')}
      keyword(:address_field) {content.div(:id=>'advancedSearchFields').text_field(:id, 'address')}
      keyword(:city_field) {content.div(:id=>'advancedSearchFields').text_field(:id, 'city')}
      keyword(:state_field) {content.div(:id=>'advancedSearchFields').text_field(:id, 'state')}
#      keyword(:country_field) {content.div(:id=>'advancedSearchFields').text_field(:id, 'countrySelect')}
      keyword(:postal_field) {content.div(:id=>'advancedSearchFields').text_field(:id, 'postalCode')}
      keyword(:suburb_field) {content.div(:id=>'advancedSearchFields').text_field(:id, 'suburb')}
      #DEV_HELP
#      keyword(:find_button) { content.button(:id => 'findBtn') }
      #DEV_HELP
      keyword(:advanced_link) { content.link(:text=> 'Advanced Find') }
      #DEV_HELP
 #     keyword(:exact_button) { content.button(:value => 'Exact Match') }
      keyword(:table_content) { content.table(:id => /bbgrid-table-/)}
      keyword(:search_result_count_message) { content.div(:id=>'searchResultCount').span}

#      keyword(:account_name) { table_content.tr(:index => 1).td(:index => 2)}
      def account_name index_value
        table_content.tr(:index => index_value).td(:index => 2)
      end

#      keyword(:search_result_count_message) { content.div(:id=>'searchResultCount').span}

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
