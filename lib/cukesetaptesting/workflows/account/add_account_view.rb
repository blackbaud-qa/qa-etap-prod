module Cukesetaptesting
  module Account
    class AddAccountView < BaseView
      keyword(:add_account_element)  { content.form(:name, 'addAccountWizardForm') }
      keyword(:new_account_classic_name) {content.text_field(:id,'name')}
      keyword(:find_screen_add_account) {content.button(:value,'Add Account')}
      keyword(:new_account_classic_sort_name) {content.text_field(:id, 'sortKey')}
      keyword(:new_account_classic_address_lines) {content.text_field(:id, 'address')}
      keyword(:new_account_classic_city) {content.text_field(:id, 'city')}
      keyword(:new_account_classic_state) {content.text_field(:id, 'state')}
      keyword(:new_account_classic_postal_code) {content.text_field(:id, 'postalCode')}
      keyword(:new_account_classic_postal_county){content.text_field(:id, 'county')}
      keyword(:new_account_classic_voice){content.text_field(:title, 'Correctly formatted phone number')}
      keyword(:new_account_classic_email){content.text_field(:id, 'emailAddress')}
      keyword(:new_account_classic_web_page) {content.text_field(:id, 'webAddress')}
      keyword(:new_account_classic_note) {content.text_field(:id, 'note')}
      keyword(:new_account_classic_short_salutation) {content.text_field(:id, 'shortDesignation')}
      keyword(:new_account_classic_long_salutation) {content.text_field(:id, 'longDesignation')}
      keyword(:john_doe_link) {content.a(:text,'John Doe')}
      keyword(:other_link) {content.a(:text,'Other')}
      keyword(:delete_role_button) {content.button(:name, 'delete')}
      keyword(:yes_button) {content.button(:value, 'Yes')}
      keyword(:role_name_value) {content.hidden(:name, 'entityRoleName')}
      keyword(:address_field) {content.text_field(:id, 'address')}
      keyword(:city_field) {content.text_field(:id, 'city')}
      keyword(:state_field) {content.text_field(:id, 'state')}
      keyword(:postal_code_field) {content.text_field(:id, 'postalCode')}
      keyword(:county_field) {content.text_field(:id, 'county')}
      keyword(:voice_field) {content.text_field(:title, 'Correctly formatted phone number')}
      keyword(:email_field) {content.text_field(:id, 'emailAddress')}
      keyword(:web_page_field) {content.text_field(:id, 'webAddress')}
      keyword(:note_field) {content.text_field(:id, 'note')}
      keyword(:short_salutation_field) {content.text_field(:id, 'shortDesignation')}
      keyword(:long_salutation_field) {content.text_field(:id, 'longDesignation')}
      keyword(:find_account_phone) {content.text_field(:name, 'phone')}
      keyword(:filter_journal_results_message)



      def udf_to_click(udf)
        content.link(:text, udf + ':')
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
