module Cukesetaptesting
  module Admin
    class SystemdefinedfieldsView < BaseView
      keyword(:sys_def_fields_title)  { content.div(:class,'pageTitle') }

      keyword(:new_security_rights_value) {content.text_field(:id, 'newUdvName')}
      keyword(:add_value_button_click) {content.button(:id, 'newUdvButton')}
      keyword(:admins_only_link) {content.a(:text, 'Admins Only')}
      keyword(:edit_udf_category_page_link) {content.a(:text, 'Base')}
      keyword(:new_defined_field_link) {content.a(:text, 'New Defined Field')}
      keyword(:new_udf_field_name) {content.text_field(:id, 'nameField')}
      keyword(:udf_set_data_type_value) {content.select(:name, 'typeValue')}
      keyword(:udf_next_step_button) {content.button(:id, 'wizardNavigationNext_1')}
      keyword(:udf_field_application_transactions_enable) {content.checkbox(:name, 'applicableToTransactions')}
      keyword(:udf_enable_mobile_checkbox) {content.checkbox(:id, 'mobileCheckbox')}
      keyword(:udf_display_type_text_box_select) {content.radio(:value, 'text')}
      keyword(:security_rights_expand_link) {content.a(:text, 'Security Rights:')}
      keyword(:find_account_pop_up_add_account_button) {content.iframe(:id, 'popupFrame').span(:id => 'buttonArea').button(:index => 1)}
      keyword(:find_account_pop_up_save_button) {content.iframe(:id, 'popupFrame').button(:value, 'Save')}
      keyword(:popup_name_format_select_value) {content.iframe(:id, 'popupFrame').select(:id, 'nameFormat')}
      keyword(:popup_title_select_value) {content.iframe(:id, 'popupFrame').select(:id, 'title')}
      keyword(:popup_first_name) {content.iframe(:id, 'popupFrame').text_field(:id, 'firstName')}
      keyword(:popup_last_name) {content.iframe(:id, 'popupFrame').text_field(:id, 'lastName')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

      def system_defined_field_value_link(value)
        content.a(:text, value)
      end

      def udf_field_name_link(value)
        content.a(:text, value)
      end

      def udf_security_rights_value(sticky)
        content.checkbox(:id, sticky)
      end

      def gift_udf_to_click(udf)
        content.link(:text, udf + ':')
      end

    end
  end
end
