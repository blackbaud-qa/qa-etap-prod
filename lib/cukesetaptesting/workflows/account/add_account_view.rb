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
      keyword(:role_name_value) {content.h5(:class, 'bb-tile-header')}
      keyword(:address_field) {content.text_field(:id, 'address')}
      keyword(:city_field) {content.text_field(:id, 'city')}
      keyword(:state_field) {content.text_field(:id, 'state')}
      keyword(:postal_code_field) {content.text_field(:id, 'postalCode')}
      keyword(:county_field) {content.text_field(:id, 'county')}
      keyword(:voice_field) {content.text_field(:title, 'Correctly formatted phone number')}
      keyword(:mobile_field) {content.label(:text,/Mobile/).parent.text_field}
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
      keyword(:duplicates_continue) {content.button(:value,'Continue')}

      keyword(:management_user_defined_fields)  {content.div(:id,'managementPageContent').div(:id,'databaseContent').ul(:id,'homeQuickLinks').a(:href,'editUserDefinedFieldsCategories.do?mode=USER')}
      keyword(:udf_category) {content.div(:class,'controls').a(:text,'Base')}
      keyword(:account_type_udf) {content.a(:text, 'Account Type')}
      keyword(:field_attributes) {content.img(:id, 'wizardWorkflowIcon_taskWorkflow_userDefinedFieldWizard_2')}
      keyword(:require_udf) {content.checkbox(:id => 'requiredCheckbox')}
      keyword(:save_and_finish_udf_page) {content.input(:id, 'wizardNavigationButton_1_saveAndFinish')}
      keyword(:required_icon) {content.a(:text, 'Account Type:').parent().parent().td(:class, 'udfRequiredCell').img(:src, '/prod/images/required8.gif')}
      keyword(:name_format_select_value) {content.select(:id, 'nameFormat')}
      keyword(:title_select_value) {content.select(:id, 'title')}
      keyword(:new_names_first_name) {content.text_field(:id, 'firstName')}
      keyword(:new_names_middle_name) {content.text_field(:id, 'middleName')}
      keyword(:new_names_last_name) {content.text_field(:id, 'lastName')}
      keyword(:new_names_suffix) {content.text_field(:id, 'suffix')}
      keyword(:save_and_account_page) {content.div(:class, 'taskSpace').select(:id, 'destinationAfterSave')}
      keyword(:save_and_button_account_page) {content.div(:class, 'taskSpace').button(:class, 'saveAndButton')}
      keyword(:new_names_short_salutation) {content.text_field(:id, 'shortDesignation')}
      keyword(:new_names_long_salutation) {content.text_field(:id, 'longDesignation')}
      keyword(:new_names_envelope_salutation) {content.text_field(:id, 'envelopeDesignation')}
      keyword(:envelope_salutation_value) {content.text_field(:id, 'envelopeDesignation')}
      keyword(:title_existing_account_value) {content.text_field(:id, 'title')}
      keyword(:account_name_existing_account_value) {content.text_field(:id, 'accountName')}
      keyword(:sort_name_existing_account_value) {content.text_field(:id, 'sortKey')}
      keyword(:recognition_name_existing_account_value) {content.span(:id, 'recognitionNameDisplay')}
      keyword(:recognition_type_existing_account_value) {content.span(:id, 'recognitionTypeDisplay')}
      keyword(:new_names_sort_name) {content.text_field(:id, 'sortKey')}
      keyword(:new_names_account_name) {content.text_field(:id, 'accountName')}
      keyword(:change_country_link) {content.a(:id, 'changeCountryLink')}
      keyword(:set_country_persona_modal) {content.select(:id, 'countrySelect')}
      keyword(:set_disabled_country_persona_modal) {content.select(:name, 'disabledCountry')}
      keyword(:save_country_selection) {content.input(:id, 'save')}
      keyword(:persona_page_suburb) {content.text_field(:id, 'suburb')}
      keyword(:merge_role) {content.input(:name, 'merge')}
      keyword(:suburb_existing_account_value) {content.text_field(:id, 'suburb')}
      keyword(:change_all_replace_link) {content.a(:href, "javascript:self.massAssign('replace')")}
      keyword(:find_account_page) {content.div(:id, 'searchPage')}
      keyword(:persona_page_street_name) {content.text_field(:id, 'streetName')}
      keyword(:persona_page_building_number) {content.text_field(:id, 'buildingNumber')}
      keyword(:persona_page_apt_number) {content.text_field(:id, 'apartmentNumber')}
      keyword(:street_name_existing_account_value) {content.text_field(:id, 'streetName')}
      keyword(:building_number_existing_account_value) {content.text_field(:id, 'buildingNumber')}
      keyword(:apt_number_existing_account_value) {content.text_field(:id, 'apartmentNumber')}
      keyword(:enable_country_persona_modal) {content.select(:name, 'disabledCountry')}
      keyword(:management_system_defined_fields)  {content.a(:text,'System Defined Fields')}
      keyword(:edit_country_codes) {content.a(:text, 'Country Codes')}

      keyword(:save_and_finish_country_codes) {content.input(:id, 'wizardNavigationButton_1_saveAndFinish')}
      keyword(:system_defined_fields_page) {content.div(:id, 'userDefinedCategory')}

      keyword(:add_account_popup) {content.iframe(:id, 'popupFrame').div(:id,'etap.fieldset.area.1').button(:value,'Add Account')}
      keyword(:popup_add_account_middle_name) {content.iframe(:id, 'popupFrame').text_field(:id, 'middleName')}
      keyword(:popup_add_account_short_sal) {content.iframe(:id, 'popupFrame').text_field(:id, 'shortDesignation')}
      keyword(:popup_add_account_address_lines) {content.iframe(:id, 'popupFrame').text_field(:id, 'address')}
      keyword(:popup_add_account_city) {content.iframe(:id, 'popupFrame').text_field(:id, 'city')}
      keyword(:popup_add_account_state) {content.iframe(:id, 'popupFrame').text_field(:id, 'state')}
      keyword(:popup_add_account_postal_code) {content.iframe(:id, 'popupFrame').text_field(:id, 'postalCode')}
      keyword(:popup_add_account_email) {content.iframe(:id, 'popupFrame').text_field(:id, 'emailAddress')}
      #keyword(:account_role_value) {content.tr(:class, 'entityTitle')}
      keyword(:account_role_value) { content.element(:xpath => './/*[@id=\'etap.fieldset.area.1\']/div[1]/div[2]/div[1]') }
#      keyword(:account_role_value) {content.div(:id=>'followMeDiv1').div.div.div(:index=>1).div.div(:index=>0).div(:index=>1).div}

      keyword(:add_account_button) {content.iframe(:id,'popupFrame').form(:name,'entitySearchForm').input(:value, 'Add Account')}
      keyword(:magnifying_glass_tribute) {content.div(:id, 'tributeFields').img(:src, 'images/magnifying-glass.png')}
      #keyword(:title_select_modal) {content.iframe(:id, 'popupFrame').div(:id, 'etap.fieldset.area.3').select(:id, 'title')}
      keyword(:title_select_modal) {content.iframe(:id, 'popupFrame').select(:id, 'title')}
      keyword(:tribute_first_name_field) {content.iframe(:id, 'popupFrame').text_field(:id, 'firstName')}
      keyword(:modal_middle_name_field) {content.iframe(:id, 'popupFrame').text_field(:id, 'middleName')}
      keyword(:modal_last_name_field) {content.iframe(:id, 'popupFrame').text_field(:id, 'lastName')}
      keyword(:save_button_modal) {content.iframe(:id, 'popupFrame').div(:id, 'etap.fieldset.area.5').button(:value, 'Save')}
      keyword(:tribute_name_value) {content.div(:id, 'tributeFields').td(:id, 'tributeNameInput')}

      keyword(:new_relationship_link) {content.div(:class, 'taskSpace').a(:text, 'New Relationship')}
      keyword(:select_relationship_type_value) {content.select(:id, 'relationshipTypeRef')}
      keyword(:select_related_account_link) {content.a(:href, 'javascript: popupEntitySearch();')}
      keyword(:add_account_modal_search_text) {popupSearch.form(:name,'entitySearchForm').text_field(:id,'searchString')}
      keyword(:popup_search_find) {popupSearch.form(:name,'entitySearchForm').input(:value,'Find')}
      keyword(:select_primary) {content.radio(:value,'1')}
      keyword(:existing_relationship) {content.a(:text,'Spouse')}
      keyword(:select_member) {content.radio(:value,'2')}
      keyword(:delete_relationship) {content.a(:class, 'delete')}
      keyword(:confirm_relationship_deletion) {content.div(:class,'popupWindow').input(:value, 'Delete')}
      keyword(:relationship_present) {content.a(:class,'delete')}
      keyword(:persona_dd) {content.select(:id => 'personaType')}
      keyword(:persona_page_delete) {content.input(:value,'Delete')}
      keyword(:persona_page_persona) {content.select(:id,'personaType')}

      keyword(:select_tiles_and_layout) {content.a(:text, 'Select Tiles and Layout')}
      keyword(:household_giving_summary_tile) {content.input(:value, '10')}
      keyword(:hh_giving_summary_homepage_tile) {content.h2(:text, 'Household Giving Summary')}
      keyword(:relationships_link_click) {content.a(:text,'Relationships')}
      keyword(:existing_friend_relationship) {content.a(:text, 'Friend')}
      keyword(:udf_category_relationships_page) {content.a(:id, 'UDFS.link.base')}
      keyword(:account_settings_link_click) {content.a(:text, 'Account Settings')}
      keyword(:change_recognition_link) {content.a(:id, 'changeRecognitionLink')}
      keyword(:set_recognition_anonymous) {content.input(:value, 'label.anonymous')}
      keyword(:save_recognition_type_selection) {content.button(:class, 'btn bb-btn-secondary ng-scope')}
      keyword(:recognition_name_value) {content.span(:id, 'anonymousRecognitionDisplay')}

      keyword(:new_defined_field) {content.a(:class, 'taskLink')}
      keyword(:set_udf_name) {content.text_field(:id, 'nameField')}
      keyword(:field_application) {content.input(:name, 'applicableToCustomers')}
      keyword(:drop_down_display_type) {content.input(:value, 'single')}
      keyword(:add_udf_value) {content.input(:id, 'newUdvName')}
      keyword(:add_value_button) {content.input(:id, 'newUdvButton')}
      keyword(:confirm_udf_value) {content.span(:text, 'First')}
      keyword(:open_udf_category) {content.a(:class, 'udfCategory')}
      keyword(:chapter_udf) {content.a(:text, 'Chapter')}
      keyword(:confirm_udf_value_second) {content.span(:text, 'Second')}

      def disable_country_code country_code
        content.link(:text, country_code).parent.parent.div(:class, 'actions').a(:class, 'enable')
      end


      def get_edit_salutation_pencil(salutation_name)
        sal_index = -1

        if salutation_name == 'Short Salutation'
          sal_index = 0
        elsif salutation_name == 'Long Salutation'
          sal_index = 1
        elsif salutation_name == 'Envelope Salutation'
          sal_index = 2
        end

        content.div(:class => /individualSalutations/).div(:class=>'form-group', :index=>sal_index).a
      end

      def popup_add_account_get_edit_salutation_pencil(salutation_name)
        sal_index = -1

        if salutation_name == 'Short Salutation'
          sal_index = 0
        elsif salutation_name == 'Long Salutation'
          sal_index = 1
        elsif salutation_name == 'Envelope Salutation'
          sal_index = 2
        end

        content.iframe(:id, 'popupFrame').div(:class => /individualSalutations/).div(:index => sal_index).a
      end

      def udf_to_click(udf)
        # Should be ok for translation, as we
        #   are passing in a UDF's custom name
        sleep 0.5
        content.link(:text, udf + ':')
      end

      def udf_checkbox_value(udf, value)
        content.a(:text, udf + ':').parent.checkbox(:id, value)
      end

      def udf_main_section
        content.h2(:text=>'User Defined Fields: Constituent')
      end

      def udf_main_section_collapsed?
        a = content.section(:class=>'bb-tile-nested bb-tile ng-isolate-scope collapsed').present?
      end

      def udf_section_to_click udf
        # content.div(:id,'etap.fieldset.table.customerFields').div(:class=> 'fakeLinkBold', :text=> 'User Defined Fields: ' + udf)
        content.img(:id,'etap.fieldset.tick.customerFields')
      end

      def popup_add_account_udf_to_click(udf)
        content.iframe(:id, 'popupFrame').link(:text, udf + ':')
      end

      def popupTextLink(text)
        popupSearch.a(:text, text)
      end

      def popupSearch
        content.iframe(:id, 'popupFrame')
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
