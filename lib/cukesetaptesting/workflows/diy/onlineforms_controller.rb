module Cukesetaptesting
  module DIY
    class Onlineforms < BaseController
      @model = OnlineformsModel
      @view = OnlineformsView

      def diy_page_is_live?(name)
        return @view.diy_page_is_live? name
      end

      def get_diy_page_state(name)
        return @view.get_diy_page_state name
      end

      def diy_page_exists?(name)
        return @view.diy_page_exists? name
      end

      def on_online_forms_page?
        return @view.online_forms_title.when_present.text.include? 'Online Forms'
      end

      def management_page_diy_click
        return @view.management_page_diy.when_present.click
      end

      def create_a_page_click
        return @view.create_a_page.when_present.click
      end

      def choose_online_giving_click
        return @view.choose_online_giving_page.when_present.click
      end

      def choose_embedded_template_click
        return @view.choose_embedded_template.when_present.click
      end

      def template_next_click
        return @view.template_next.when_present.click
      end

      def fund_click
        return @view.fund_link.when_present.click
      end

      def choose_fund(fund)
        @view.click_on_fund(fund).when_present.click
      end

      def fund_update_click
        return @view.fund_update.when_present.click
      end

      def campaign_click
        return @view.campaign_link.when_present.click
      end

      def choose_campaign(campaign)
        @view.click_on_campaign(campaign).when_present.click
      end

      def approach_click
        return @view.approach_link.when_present.click
      end

      def choose_approach(approach)
        @view.click_on_approach(approach).when_present.click
      end

      def settings_click_submit
        return @view.settings_submit.when_present.click
      end

      def go_live_click
        return @view.go_live_button.when_present.click
      end

      def go_live_confirm_click
        @view.go_live_confirm.when_present.click
      end

      def on_new_diy_page?
        return @view.live_page.present?
      end

      def on_edited_diy_page?
        return @view.live_page_title.text.include? 'My Organization'
      end

      def edit_form(page)
        @tempPage = @view.content.span(:class=>'namePart', :text=> page)
        @tempPage.wait_until_present
        @tempPage.parent.parent.div(:class=>'linkBox', :text=>'Edit').when_present.click
      end

      def edit_style_click
        @view.edit_style.when_present.hover
        @view.edit_style.when_present.click
      end

      def swap_template_click
        @view.swap_template.when_present.click
      end

      def choose_steel_template_click
        @view.choose_steel_template.when_present.click
      end

      def swap_to_this_template_click
        @view.swap_to_this_template.when_present.click
      end

      def title_font_comic_sans_set
        @view.diy_title_font.when_present.select 'Comic Sans'
      end

      def title_font_20pt_set
        @view.diy_title_size.when_present.select '20pt'
      end

      def background_EEE_set
        # @view.background_color.when_present.select ''
      end

      def edit_update_click
        @view.edit_update.when_present.click
      end

      def edit_settings_click
        @view.edit_settings.when_present.click
      end

      def change_funds_click
        @view.change_funds.when_present.click
      end

      def settings_link_click(link)
        @view.content.a(:text=>link)
      end

      def unrestricted_fund_click
        @view.unrestricted_fund.when_present.click
      end

      def funds_update_click
        @view.funds_update.when_present.click
      end

      def select_campaign_click
        @view.select_campaign.when_present.click
      end

      def campaign_annual_click
        @view.campaign_annual.when_present.click
      end

      def select_approach_click
        @view.select_approach.when_present.click
      end

      def approach_unsolicited_click
        @view.approach_unsolicited.when_present.click
      end

      def settings_update_click
        @view.settings_update.when_present.click
      end

      def donation_section_hover
        @view.donation_section.wait_until_present
        @view.browser.execute_script('arguments[0].scrollIntoView();',@view.content.div(:id,'ecommEditorToolbar'))
        @view.donation_section.hover
      end

      def edit_section_click
        @view.edit_section.wait_until_present
        @view.edit_section.img(:class,'edit').when_present.click
      end

      def include_specific_check
        @view.include_specific.when_present.set
      end

      def gift_update_click
        @view.gift_update.when_present.click
      end

      def add_item_click
        sleep 1
        @view.browser.execute_script('arguments[0].scrollIntoView();',@view.content.h2(:class,'pageTitle'))
        @view.add_item.when_present.click
      end

      def add_image_click
        @view.add_image.when_present.click
      end

      def new_image_click
        @view.new_image.when_present.right_click
        @view.new_image_insert.when_present.click
      end

      def add_fields_click
        @view.add_fields.when_present.click
      end

      def base_field_cat_select value
        @view.base_field_cat.when_present.select value
      end

      def field_select_gender_click(value)
        @view.content.a(:text=>value).when_present.click
      end

      def field_select_click(field_name)
        #@view.field_select_gender.when_present.click
        field = @view.field_select field_name

        # if we only received content back,
        #   then the UDF was not found
        if !(field == @view.content)
          field.when_present.click
        end
      end

      def fields_update_click
        @view.fields_update.when_present.click
      end

      def add_text_click
        @view.add_text.when_present.click
      end

      def update_default_text
        @view.default_text.when_present.send_keys [:control, 'a']
        @view.default_text.when_present.send_keys [:delete]
        @view.default_text.when_present.send_keys "Testing with new text"
      end

      def update_text_click
        @view.update_text.when_present.click
      end

      def diy_save_click
        @view.diy_save.when_present.click
      end

      def diy_save_confirm_click
        @view.diy_save_confirm.when_present.click
      end

      def donation_page_copy_click name
        @view.content.span(:class=>'namePart',:text=> name).parent.parent.div(:class=>'linkBox',:text=>'Copy').when_present.click
      end

      def donation_page_disable_click name
        @view.content.span(:class=>'namePart',:text=> name).parent.parent.div(:class=>'linkBox',:text=>'Disable').when_present.click
      end

      def donation_page_delete_click name
        @view.content.span(:class=>'namePart',:text=> name).parent.parent.div(:class=>'linkBox',:text=>'Delete').when_present.click
      end

      def donation_page_disable_confirm_click
        @view.donation_page_disable_confirm.when_present.click
      end

      def contact_scroll_top
        @view.content.div(:id,'managerPageStats').wait_until_present
        @view.browser.execute_script('arguments[0].scrollIntoView();',@view.content.div(:id,'managerPageStats'))
      end

      def donation_page_delete_confirm_click
        @view.donation_page_delete_confirm.when_present.click
      end

      def donation_page_replace_click
        @view.donation_page_replace.when_present.click
      end

      def donation_page_present? text
        return @view.content.span(:class=>'namePart',:text=>text).present?
      end

      def diy_page_present? diy_page_name
        return @view.content.span(:class=>'namePart',:text=>diy_page_name).present?
      end

      def diy_page_wait_for_title
        @view.online_forms_title.wait_until_present
      end

      def diy_page_link_click page_name
        (@view.diy_page_link page_name).when_present.click
      end

      def switch_tab
        @view.browser.windows.last.use
      end

      def live_fund_set fund
        @view.live_fund.when_present.select fund
      end

      def live_gender_set gender
        @view.live_gender.when_present.select gender
      end

      def live_maiden_name_set maiden_name
        @view.live_maiden_name.when_present.set maiden_name
      end

      def live_amount_other_set
        @view.live_amount_other.when_present.set
      end

      def live_freq_set freq
        @view.live_freq.when_present.select freq
      end

      def live_title_set title
        @view.live_title.when_present.select title
      end

      def live_country_set country
        @view.live_country.when_present.select country
      end

      def live_state_set state
        @view.live_state.when_present.select state
      end

      def live_card_type_set card
        @view.live_card_type.when_present.set card
      end

      def live_exp_month_set exp
        @view.live_exp_month.when_present.set exp
      end

      def live_exp_year_set exp
        @view.live_exp_year.when_present.set exp
      end

      def live_submit_click
        # browser.after_hooks.without do |browser|
        @view.browser.without_checkers do
          @view.live_submit.when_present.click
        end
      end

      def live_transaction_successful?
        @view.live_results_header.when_present.text.include? 'Transaction Successful'
      end

      def close_current_tab
        @view.browser.windows.last.close
      end

      def create_contact_page_click
        @view.create_contact_page.when_present.click
      end
      
      def custom_template_click
        @view.custom_template.when_present.click
      end

      def create_contact_next_click
        @view.create_contact_next.when_present.click
      end

      def custom_template_displayed?
        return @view.browser.div(:id,'logo').present?
      end

      def ticket_section_update
        @view.ticket_section_update_click.when_present.click
      end

      def ticket_section_hover
        @view.ticket_section.when_present.hover
      end

      def unmark_donor_confirmation
        @view.unmark_donor_confirmation_click.when_present.click
      end

      def unmark_org_confirmation
        @view.unmark_org_confirmation_click.when_present.click
      end

      def diy_udf_test_url
        @view.diy_udf_test_url_click.when_present.click
      end

      def udf_test_page_present? text
        return @view.content.div(:id, 'etap.fieldset.area.1').span(:class=>'namePart',:text=>text).present?
      end

      def live_account_type_set value
        @view.live_account_type.when_present.select value
      end
      
      def donor_confirmation_email_checkbox val
        @view.donor_confirmation_email_checkbox val
      end

      def org_confirmation_email_checkbox val
        @view.org_confirmation_email_checkbox val
      end

      def diy_magnifying_glass_click
        @view.diy_magnifying_glass.when_present.click
      end

      def diy_disabled_account_type_udf
        @view.diy_disabled_udf.present?
      end

      def no_just_make_copy_click
        @view.no_just_make_copy_button.when_present.click
      end

      def choose_chisel_template_click
        return @view.choose_chisel_template.when_present.click
      end

      def diy_share_icons
        @view.diy_share_icons.present?
      end

      def diy_facebook_share_icon
        @view.diy_facebook_share_icon.when_present.click
      end

      def facebook_login_window
        @view.facebook_login_window.present?
      end

      def set_live_membership_type value
        @view.live_membership_type.when_present.set value
      end

      def set_live_membership_level value
        @view.live_membership_level.when_present.select value
      end

      def set_live_membership_type value
        @view.live_membership_type.when_present.set value
      end

      def set_live_membership_level value
        @view.live_membership_level.when_present.select value
      end

      def set_live_volunteer_availability value
        @view.browser.div(:class=>'udf volunteerAvailability pageBlockElement row').span(:text=>value).parent.checkbox.click
      end

      def set_live_volunteer_skill_set value
        @view.browser.div(:class=>'udf volunteerSkills pageBlockElement row').span(:text=>value).parent.checkbox.click
      end

      def set_live_volunteer_interest_area value
        @view.browser.div(:class=>'udf volunteerInterest pageBlockElement row').span(:text=>value).parent.checkbox.click
      end

      def live_submission_successful?
        @view.live_results_header.when_present.text.include? 'Registration Successful'
      end

      def contact_in_journal_click
        @view.contact_in_journal.when_present.click
      end

      def contact_method
        @view.contact_method_option.when_present.value
      end

      def live_company_set value
        @view.live_company.when_present.set value
      end

      def live_date_of_birth_set value
        @view.live_date_of_birth.when_present.set value
      end

      def live_job_title_set value
        @view.live_job_title.when_present.set value
      end

      def live_marital_status_set value
        @view.live_marital_status.when_present.select value
      end

      def set_default_country_diy value
        @view.set_default_country_diy.when_present.select value
      end

      def diy_country_default
        @view.default_country_diy.when_present.value
      end

      def new_event_page_click
        @view.new_event_page_button.when_present.click
      end

      def send_donor_confirmation_click
        @view.send_donor_confirmation_checkbox.when_present.click
      end

      def send_org_confirmation_click
        @view.send_org_confirmation_checkbox.when_present.click
      end

      def event_info_section_hover
        @view.event_info_section.wait_until_present
        @view.browser.execute_script('arguments[0].scrollIntoView();',@view.content.div(:id,'ecommEditorToolbar'))
        @view.event_info_section.hover
      end

      def event_info_section_click
        @view.event_info_section.when_present.click
        @view.event_info_pencil_icon.click
      end

      def select_ticket_field
        @view.select_field_link.when_present.click
        @view.ticket_quantity_a.when_present.click
      end

      def ticket_info_update_click
        @view.ticket_info_update_button.click
      end

      def press_enter
        @view.browser.send_keys :enter
      end

      def new_membership_page_click
        @view.new_membership_page_button.when_present.click
      end

      def membership_type_select_link_click
        @view.membership_type_select_link.when_present.click
      end

      def membership_modal_search_button_click
        @view.membership_modal_search_button.when_present.click
      end

      def membership_type_udf_click
        @view.membership_type_udf.when_present.click
      end

      def membership_modal_ok_click
        @view.membership_modal_ok_button.when_present.click
      end

      def membership_level_select_link_click
        @view.membership_level_select_link.when_present.click
      end

      def membership_level_udf_click
        @view.membership_level_udf.when_present.click
      end

      def click_side_of_membership_modal
        @view.side_of_membership_modal.when_present.click
      end

    end
  end
end

