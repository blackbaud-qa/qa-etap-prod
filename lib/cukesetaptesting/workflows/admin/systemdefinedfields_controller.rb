module Cukesetaptesting
  module Admin
    class Systemdefinedfields < BaseController
      @model = SystemdefinedfieldsModel
      @view = SystemdefinedfieldsView

      def on_system_defined_page?
        return @view.sys_def_fields_title.when_present.text.include? 'System Defined Fields'
      end
      
      def system_defined_field_value(value)
        @view.system_defined_field_value_link(value).when_present.click
      end

      def is_admins_only_present?
        @view.admins_only_link.present?
      end

      def add_value_button
        @view.add_value_button_click.when_present.click
      end

      def edit_udf_category_page(value)
        @view.edit_udf_category_page_link(value).when_present.click
      end

      def udf_field_name_present?(value)
        @view.udf_field_name_link(value).present?
      end

      def new_defined_field
        @view.new_defined_field_link.when_present.click
      end

      def udf_set_data_type(value)
        @view.udf_set_data_type_value.when_present.select value
      end

      def udf_next_step
        @view.udf_next_step_button.when_present.click
      end

      def udf_field_application_transactions
        @view.udf_field_application_transactions_enable.when_present.set
      end

      def udf_enable_mobile
        @view.udf_enable_mobile_checkbox.when_present.set
      end

      def udf_display_type_text_box
        @view.udf_display_type_text_box_select.when_present.set
      end

      def security_rights_expand
        @view.security_rights_expand_link.when_present.click
      end

      def udf_security_rights(sticky)
        @view.udf_security_rights_value(sticky).when_present.set
      end

      def find_account_pop_up_add_account
        @view.find_account_pop_up_add_account_button.when_present.click
      end

      def find_account_pop_up_save
        @view.find_account_pop_up_save_button.when_present.click
      end

      def popup_name_format_select(value)
        @view.popup_name_format_select_value.when_present.set value
      end

      def popup_title_select(value)
        @view.popup_title_select_value.when_present.set value
      end

      def set_multi_select_udf_value(udf, value)
        @view.gift_udf_to_click(udf).parent.checkbox.set value
      end

      def click_gift_udf(udf)
        @view.gift_udf_to_click(udf).when_present.click
      end

      def set_single_select_udf_value(udf, value)
        @view.gift_udf_to_click(udf).parent.select.set value
      end

    end
  end
end

