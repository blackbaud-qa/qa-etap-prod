module Cukesetaptesting
  module Account
    class AddAccountView < BaseView

      keyword(:constituent_checkbox) { content.checkbox(:id, 'createCustomerRole') }
      keyword(:tribute_checkbox) { content.checkbox(:id, 'createTributeRole') }
      keyword(:user_checkbox) { content.checkbox(:id, 'createUserRole') }
      keyword(:team_checkbox) { content.checkbox(:id, 'createTeamRole') }

      keyword(:add_account_element)  { content.form(:name, 'addAccountWizardForm') }

      keyword(:new_account_classic_name) {content.text_field(:id,'name')}
      # New name format in develop branch:
      keyword(:new_account_title) {content.select_list(:id,'title')}
      keyword(:new_account_first_name) {content.text_field(:id,'firstName')}
      keyword(:new_account_middle_name) {content.text_field(:id,'middleName')}
      keyword(:new_account_last_name) {content.text_field(:id,'lastName')}


      #OTG_INTL keyword(:find_screen_add_account) {content.button(:value,'Add Account')}
      keyword(:find_screen_add_account) {content.span(:id => 'buttonArea').button(:index => 2)}
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
      #DEV_HELP: I had tried using the :index position of the Account
      #           settings link, but that gets really complicated and
      #           messy because the number of columns differs between
      #           users and constituents.
      keyword(:other_link) {content.a(:text,'Account Settings')}
      # keyword(:other_link) {content.div(:id => 'topMenu').li(:index => 6).a}
      keyword(:delete_role_button) {content.button(:name, 'delete')}
      #DEV_HELP
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
      # keyword(:find_account_phone) {content.text_field(:name, 'phone')}
      keyword(:filter_journal_results_message)
      #DEV_HELP
      keyword(:not_duplicates) {content.a(:text,/Not Duplicate Accounts/)}


      keyword(:login_id) {content.text_field(:id, 'loginId')}
      keyword(:password) {content.text_field(:id, 'password')}
      keyword(:repassword) {content.text_field(:id, 'confirmPassword')}


      keyword(:usps_button_click) {content.a(:id, 'postalCodeLink')}
      keyword(:usps_postal_code_value)  {browser.div(:class, 'data').span(:class, 'zip')}
      keyword(:personas_link_click) {content.a(:text,'Personas')}
      keyword(:whitepages_button_click) {content.a(:id, 'whitePagesLink')}

      keyword(:multiple_emails_return) {content.text_field(:id, 'emailAddress')}

      keyword(:management_user_defined_fields)  {content.div(:id,'managementPageContent').div(:id,'databaseContent').ul(:id,'homeQuickLinks').a(:href,'editUserDefinedFieldsCategories.do?mode=USER')}
      keyword(:udf_category) {content.div(:class,'controls').a(:text,'Base')}
      keyword(:account_type_udf) {content.a(:text, 'Account Type')}
      keyword(:field_attributes) {content.img(:id, 'wizardWorkflowIcon_taskWorkflow_userDefinedFieldWizard_2')}
      keyword(:require_udf) {content.input(:id, 'requiredCheckbox')}
      keyword(:save_and_finish_udf_page) {content.input(:id, 'wizardNavigationButton_1_saveAndFinish')}
      keyword(:required_icon) {content.a(:text, 'Account Type:').parent().parent().td(:class, 'udfRequiredCell').img(:src, '/prod/images/required8.gif')}

      def udf_to_click(udf)
        # Should be ok for translation, as we
        #   are passing in a UDF's custom name
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
