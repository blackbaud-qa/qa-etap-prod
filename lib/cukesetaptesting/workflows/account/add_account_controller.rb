module Cukesetaptesting
  module Account
    class AddAccount < BaseController
      @model = AddAccountModel
      @view = AddAccountView

      def on_add_account_page?
        @view.add_account_element.when_present.present?
      end

      def find_screen_add_account_click
        @view.find_screen_add_account.when_present.click
      end

      def is_split_names?
        first_name_present = @view.new_account_first_name.present?
        last_name_present = @view.new_account_last_name.present?
        #@view.content.div(:id,'etap.fieldset.table.2').wait_until_present
        # sleep 5
        # first_name_present = @view.new_account_first_name.exists?
        # last_name_present = @view.new_account_last_name.exists?

        return first_name_present && last_name_present
      end

      def click_udf(udf)
      @view.udf_to_click(udf).when_present.click
      end

      def click_udf_section(udf)
        @view.udf_section_to_click(udf).when_present.click
      end

      def main_udf_section_is_collapsed?
        @view.udf_main_section_collapsed?
      end

      def click_main_udf_section
        @view.udf_main_section.when_present.click
      end

      def set_udf_dropdown_value(udf, value)
        @view.udf_to_click(udf).parent.select.when_present.select value
      end

      def set_udf_checkbox_value(udf, value)
        @view.udf_checkbox_value(udf, value).when_present.click
      end

      # def set_udf_section_dropdown_value(udf, value)
      #   @view.udf_section_to_click(udf).parent.parent.parent.link(:text, udf + ':').select.when_present.select value
      # end

      def set_udf_value(udf, value)
        @view.udf_to_click(udf).parent.text_field.set value
      end

      def set_login_id(value)
        @view.login_id.when_present.set value
      end

      def set_user_password(value)
        @view.password.when_present.set value
      end

      def set_user_password_confirm(value)
        @view.repassword.when_present.set value
      end

      def name_link_click name
        # This uses the :text locator, but should be ok for
        #   international usage since we are feeding in a
        #   dynamic name value
        @view.content.a(:text,name).when_present.click
      end

      def other_link_click
        @view.other_link.when_present.click
      end

      def delete_role_button_click
        @view.delete_role_button.when_present.click
      end

      def yes_button_click
        @view.yes_button.when_present.click
      end

      def new_account_persona
        Watir::Wait.until {@view.role_name_value.exists?}
        @view.role_name_value.value
      end

      def persona_page_address_lines
        @view.address_field.when_present.value
      end

      def persona_page_city
        @view.city_field.when_present.value
      end

      def persona_page_state
        @view.state_field.when_present.value
      end

      def persona_page_postal_code
        @view.postal_code_field.when_present.value
      end

      def persona_page_county
        @view.county_field.when_present.value
      end

      def persona_page_voice
        @view.voice_field.when_present.value
      end

      def persona_page_mobile
        @view.mobile_field.when_present.value
      end

      def persona_page_email
        @view.email_field.when_present.value
      end

      def persona_page_web_page
        @view.web_page_field.when_present.value
      end

      def persona_page_note
        @view.note_field.when_present.value
      end

      def persona_page_short_salutation
        @view.short_salutation_field.when_present.value
      end

      def persona_page_long_salutation
        @view.long_salutation_field.when_present.value
      end

      def persona_page_company(udf)
        @view.udf_to_click(udf).parent.span.text
      end

      def set_constituent_checkbox(value)
        @view.constituent_checkbox.when_present.set value
      end

      def set_tribute_checkbox(value)
        @view.tribute_checkbox.when_present.set value
      end

      def set_user_checkbox(value)
        @view.user_checkbox.when_present.set value
      end

      def set_team_checkbox(value)
        @view.team_checkbox.when_present.set value
      end

      def set_role_checkbox(role_name, value)
        if (value != true && value != false)
          value = true
        end

        if (role_name == 'constituent')
          set_constituent_checkbox value
        elsif (role_name == 'tribute')
          set_tribute_checkbox value
        elsif (role_name == 'user')
          set_user_checkbox value
        elsif (role_name == 'team')
          set_team_checkbox value
        end
      end

      def possible_duplicate_detected?
        return @view.content.h1(:class=>'pageTitle',:text=>'Possible Duplicates Report').present?
      end

      def not_duplicates_click
        @view.not_duplicates.when_present.click
      end

      def duplicates_continue_click
        @view.duplicates_continue.click
      end

      # def create_person (account_name, sort_name, address = '', city = '', state = '', postal_code = '', county = '', voice = '', email = '', web_page = '', note = '', short_sal = '', long_sal = '', udf_name = 'Company', udf_value = '', desired_next_page = 'Go to Personas')
      #   step "I am logged into eTap"
      #   step "I click Accounts"
      #   step %Q[I click on Add Account on the find account screen]
      #   step %Q[I set Name to '#{account_name}' on the classic add account page]
      #   step %Q[I set Sort Name to '#{sort_name}' on the classic add account page]
      #   step %Q[I set Address Lines to '#{address}' on the classic add account page]
      #   step %Q[I set City to '#{city}' on the classic add account page]
      #   step %Q[I set State to '#{state}' on the classic add account page]
      #   step %Q[I set Postal Code to '#{postal_code}' on the classic add account page]
      #   step %Q[I set County to '#{county}' on the classic add account page]
      #   step %Q[I set Voice to '#{voice}' on the classic add account page]
      #   step %Q[I set Email to '#{email}' on the classic add account page]
      #   step %Q[I set Web Page to '#{web_page}' on the classic add account page]
      #   step %Q[I set Note to '#{note}' on the classic add account page]
      #   step %Q[I set Short Salutation to '#{short_sal}' on the classic add account page]
      #   step %Q[I set Long Salutation to '#{long_sal}' on the classic add account page]
      #   step %Q[I set the UDF '#{udf_name}' to '#{udf_value}' on the classic add account page]
      #   step %Q[I click Save And '#{desired_next_page}'] # eg: 'Go to Personas'
      # end

      def usps_button
        @view.usps_button_click.when_present.click
      end

      def usps_postal_code?(value)
        @view.usps_postal_code_value.when_present.text.include? value
      end

      def personas_link
        @view.personas_link_click.when_present.click
      end

      def whitepages_button
        @view.whitepages_button_click.when_present.click
      end

      def whitepages_url?(value)
        @view.browser.url == value
      end

      def multiple_email_return(value)
        @view.multiple_email_return.when_present.set value
      end

      def management_user_defined_fields
        @view.management_user_defined_fields.when_present.click
      end

      def udf_category
        @view.udf_category.when_present.click
      end

      def account_type_udf
        sleep 3
        @view.account_type_udf.when_present.click
      end

      def field_attributes
        @view.field_attributes.when_present.click
      end

      def require_udf
        sleep 1
        @view.require_udf.when_present.set
      end

      def unrequire_udf
        sleep 1
        @view.require_udf.when_present.clear
      end

      def save_and_finish_udf_page
        @view.save_and_finish_udf_page.when_present.click
      end

      def required_icon
        @view.required_icon.present?
      end

      def name_format_select(value)
        @view.name_format_select_value.when_present.select value
      end

      def title_select(value)
        @view.title_select_value.when_present.select value
      end

      def set_save_and_account_page(value)
        @view.save_and_account_page.select(value)
      end

      def click_save_and_account_page
#        @view.browser.send_keys :page_up
#        sleep 2
#        @view.browser.send_keys :page_up
#        sleep 2
        @view.save_and_button_account_page.when_present.click
        if (@view.browser.alert.exists?)
          @view.browser.alert.ok
        end
      end

      def edit_salutation(value)
        @view.get_edit_salutation_pencil(value).when_present.click
      end

      def envelope_salutation
        @view.envelope_salutation_value.value
      end

      def name_format_existing_account
        @view.name_format_select_value.option(:selected => 'selected').text
        #@view.name_format_select_value.value
      end

      def title_existing_account
        @view.title_existing_account_value.value
      end

      def first_name_existing_account
        @view.new_names_first_name.value
      end

      def middle_name_existing_account
        @view.new_names_middle_name.value
      end

      def last_name_existing_account
        @view.new_names_last_name.value
      end

      def suffix_existing_account
        @view.new_names_suffix.value
      end

      def account_name_existing_account
        @view.account_name_existing_account_value.value
      end

      def sort_name_existing_account
        @view.sort_name_existing_account_value.value
      end

      def recognition_name_existing_account(value)
        @view.recognition_name_existing_account_value.when_present.text.include? value
      end

      def recognition_type_existing_account(value)
        @view.recognition_type_existing_account_value.when_present.text.include? value
      end

      def change_country_link
        @view.change_country_link.when_present.click
      end

      def set_country_persona_modal(value)
        @view.set_country_persona_modal.when_present.select(value)
      end

      def save_country_selection
        @view.save_country_selection.when_present.click
      end

      def suburb_persona_page
        @view.persona_page_suburb.value
      end

      def merge_role
        @view.merge_role.when_present.click
      end

      def change_all_replace_link
        @view.change_all_replace_link.when_present.click
      end

      def suburb_existing_account_value
        @view.suburb_existing_account_value.value
      end

      def find_account_page
        @view.find_account_page.present?
      end

      def persona_page_persona_select value
        @view.persona_page_persona.when_present.select value

      end



      def street_name_persona_page
        @view.persona_page_street_name.value
      end

      def building_number_persona_page
        @view.persona_page_building_number.value
      end

      def apt_number_persona_page
        @view.persona_page_apt_number.value
      end

      def street_name_existing_account_value
        @view.street_name_existing_account_value.value
      end

      def building_number_existing_account_value
        @view.building_number_existing_account_value.value
      end

      def apt_number_existing_account_value
        @view.apt_number_existing_account_value.value
      end

      def enable_country_persona_modal(value)
        @view.enable_country_persona_modal.when_present.select(value)
      end

      def management_system_defined_fields
        @view.management_system_defined_fields.when_present.click
      end

      def edit_country_codes
        @view.edit_country_codes.when_present.click
      end

      def disable_country_code(value)
        @view.disable_country_code(value).when_present.click
      end

      def save_and_finish_country_codes
        @view.save_and_finish_country_codes.when_present.click
      end

      def system_defined_fields_page
        @view.system_defined_fields_page.present?
      end

      def add_account_popup_click
        @view.add_account_popup.when_present.click
      end

      def popup_add_account_edit_salutation(value)
        @view.popup_add_account_get_edit_salutation_pencil(value).when_present.click
      end

      def account_role(value)
        @view.account_role_value.when_present.text.include? value
      end

      def popup_add_account_click_udf(udf)
        @view.popup_add_account_udf_to_click(udf).when_present.click
      end

      def popup_add_account_set_udf_dropdown_value(udf, value)
        @view.popup_add_account_udf_to_click(udf).parent.select.when_present.select value
      end

      def magnifying_glass_tribute
        @view.magnifying_glass_tribute.when_present.click
      end

      def add_account_button
        @view.add_account_button.when_present.click
      end

      def title_select_modal(value)
        @view.title_select_modal.when_present.select value
      end

      def tribute_first_name_field
        @view.tribute_first_name_field.when_present.value
      end

      def modal_middle_name_field
        sleep 2
        @view.modal_middle_name_field.when_present.value
      end

      def modal_last_name_field
        sleep 2
        @view.modal_last_name_field.value
      end

      def save_button_modal
        sleep 2
        @view.save_button_modal.when_present.click
      end

      def tribute_name_value
        @view.tribute_name_value.value
      end

      def new_relationship_link
        @view.new_relationship_link.click
      end

      def set_relationship_type
        @view.set_relationship_type.click
      end

      def select_related_account_link
        @view.select_related_account_link.click
      end

      def add_account_modal_search_text
        @view.add_account_modal_search_text.value
      end

      def select_relationship_type_value (type)
        @view.select_relationship_type_value.when_present.select(type)
      end

      def click_find
        @view.popup_search_find.when_present.click
      end

      def popup_click_link_by_text(text)
        @view.popupTextLink(text).when_present.click
      end

      def select_primary
        @view.select_primary.when_present.click
      end

      def existing_relationship
        @view.existing_relationship.when_present.click
      end

      def select_member
        @view.select_member.when_present.click
      end

      def delete_relationship
        @view.delete_relationship.click
      end

      def confirm_relationship_deletion
        @view.confirm_relationship_deletion.click
      end

      def relationship_present
        @view.relationship_present.present?
      end

      def select_persona_type_value(type)
        @view.persona_type_value.when_present.select(type)
      end

      def personas_dd_select(value)
        @view.persona_dd.when_present.option(:text=>/#{value}/).select
      end

      def persona_page_delete_click
        @view.click_and_confirm_alert(@view.persona_page_delete)
      end

      def country_enabled? value
        @view.set_country_persona_modal.when_present.include? value
      end

      def set_disabled_country(value)
        @view.set_disabled_country_persona_modal.when_present.select value
      end

      def select_tiles_and_layout
        @view.select_tiles_and_layout.when_present.click
      end

      def household_giving_summary_tile
        @view.household_giving_summary_tile.when_present.click
      end

      def hh_giving_summary_homepage_tile
        @view.hh_giving_summary_homepage_tile.present?
      end

      def relationships_link
        @view.relationships_link_click.when_present.click
      end

      def existing_friend_relationship
        @view.existing_friend_relationship.when_present.click
      end

      def udf_category_relationships_page(value)
        @view.udf_category_relationships_page(value).when_present.click
      end

      def relationships_page_click_udf(udf)
        @view.udf_to_click(udf).when_present.click
      end

      def relationships_page_set_udf_dropdown_value(udf, value)
        @view.udf_to_click(udf).parent.select.when_present.select value
      end

      def account_settings_link
        @view.account_settings_link_click.when_present.click
      end

      def change_recognition_link
        @view.change_recognition_link.when_present.click
      end

      def set_recognition_anonymous
        @view.set_recognition_anonymous.when_present.click
      end

      def save_recognition_type_selection
        @view.save_recognition_type_selection.when_present.click
      end

      def recognition_name_value
        @view.recognition_name_value.present?
      end


      end
  end
end

