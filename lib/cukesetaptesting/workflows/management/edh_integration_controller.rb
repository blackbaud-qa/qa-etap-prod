module Cukesetaptesting
  module Management
    class EdhIntegration < BaseController
      @model = EdhIntegrationModel
      @view = EdhIntegrationView


      def management_integrations_click
        @view.management_integrations.when_present.click
      end

      def on_integrations_page?
        sleep 2
        @view.integrations_page_check.present?
      end

      def set_up_click
        @view.set_up.when_present.click
      end

      def setup_edh_modal_present?
        sleep 2
        @view.setup_edh_modal.present?
      end

      def edh_integration_next_click
        sleep 1
        @view.edh_integration_next.when_present.click
        sleep 1
      end

      def edh_integration_previous_click
        sleep 1
        @view.edh_integration_previous.when_present.click
        sleep 1
      end

      def edh_integration_save_click
        sleep 1
        @view.edh_integration_save.when_present.click
        sleep 1
      end

      def edh_integration_cancel_click
        sleep 1
        @view.edh_integration_cancel.when_present.click
        sleep 1
      end

      def edh_start_import_button_click
        @view.edh_start_import_button.when_present.click
      end

      def edit_integration_page_present?
        @view.edit_integration_page.present?
      end

      def edh_integration_next_text_include? text
        @view.edh_integration_next.when_present.text.include? text
      end

      def edh_start_import_button_enabled?
        @view.edh_start_import_button.wait_until_present
        button_enabled? @view.edh_start_import_button
      end

      def edit_set_up_click
        @view.edit_set_up.when_present.click
        # @view.set_up.when_present.click
      end

      def edh_integration_modal_error_include? error
        @view.edh_integration_modal_error.when_present.text.include? error
      end

      def next_button_enabled?
        @view.edh_integration_next.wait_until_present
        button_enabled? @view.edh_integration_next
      end

      def save_button_enabled?
        @view.edh_integration_save.wait_until_present
        button_enabled? @view.edh_integration_save
      end

      def button_enabled? button
        button.attribute_value('ng-disabled').nil?
      end

      def integrations_page_content_include? text
        @view.integrations_page_content.when_present.include? text
      end

      def map_campaigns_click
        @view.map_campaigns.when_present.click
      end

      def campaign_mappings_modal_present?
        sleep 2
        @view.campaign_mappings_modal.present?
      end

      def default_fund_select selection
        @view.default_fund.when_present.select selection
      end

      def default_campaign_select selection
        @view.default_campaign.when_present.select selection
      end

      def default_approach_select selection
        @view.default_approach.when_present.select selection
      end

      def select_historical_data_click
        @view.select_historical_data.when_present.click
      end

      def historical_data_created_since_click
        @view.historical_data_created_since.when_present.click
      end

      def historical_data_modal_present?
        sleep 2
        @view.historical_data_modal.present?
      end

      def all_historical_data_set
        @view.all_historical_data.when_present.click
      end

      def import_button_present?
        sleep 2
        @view.import_button.present?
      end

      def us_edh_signup_click
        @view.us_edh_signup.when_present.click
      end

      def on_us_EDH_sign_up_page?
        sleep 3
      return  @view.us_edh_signup_page_element.present?
      end

      def delete_API_key_value
        @view.select_API_key_value.when_present.send_keys [:control, 'a']
        @view.select_API_key_value.when_present.send_keys :delete
      end

      def api_key_validation?
        @view.api_key_validationt.present?
      end

      def edh_email_validation?
        @view.edh_email_validation.present?
      end

      def delete_edh_email_value
        @view.select_edh_email_value.when_present.send_keys [:control, 'a']
        @view.select_edh_email_value.when_present.send_keys :delete
      end

      def edh_user_guide_click
        @view.edh_user_guide.when_present.click
      end

      def on_EDH_user_guide_page?
        sleep 3
        @view.edh_user_guid_page_element.present?
      end

      def edit_mappings_click
        @view.edit_mappings.when_present.click
      end

      def import_now_link_click
        @view.import_now_link.when_present.click
      end

      def import_finish_successfully_wait
        @view.import_finish_successfully_message.wait_until_present
      end

      def edh_notifications_email_address
        @view.edh_notifications.value
      end

      def edh_api_key_value
        @view.api_key.value
      end

      def edh_default_fund_value(fund)
        @view.default_fund.text.include? fund
      end

      def edh_default_campaign_value(campaign)
        @view.default_campaign.text.include? campaign
      end

      def edh_default_approach_value(approach)
        @view.default_approach.text.include? approach
      end

      def new_fund_link_click
        @view.new_fund_link.when_present.click
      end

      def new_campaign_link_click
        @view.new_campaign_link.when_present.click
      end

      def new_approach_link_click
        @view.new_approach_link.when_present.click
      end

      def edh_integration_edit_mappings_save_enabled?
          @view.edh_integration_edit_mappings_save.wait_until_present
          button_enabled? @view.edh_integration_edit_mappings_save
        end

      def edh_integration_edit_mappings_cancel_click
        sleep 1
        @view.edh_integration_edit_mappings_cancel.when_present.click
        sleep 1
      end

      def edh_pause_integration_link_click
        @view.edh_pause_integration_link.when_present.click
      end

      def edh_resume_integration_link_present?
        @view.edh_resume_integration_link.present?
      end

      def edh_integration_paused_message_present?
        @view.edh_integration_paused_message.text.include? 'Integration paused'
      end

      def edh_resume_integration_link_click
        @view.edh_resume_integration_link.when_present.click
      end

      def edh_pause_integration_link_present?
        @view.edh_pause_integration_link.present?
      end

      def journal_page_participation_link_click
        @view.journal_page_participation_link.when_present.click
      end

      def participant_goal_value
        @view.participant_goal.when_present.value
      end

      def participation_display_name_value
        @view.participation_display_name.when_present.value
      end

      def change_edh_notification_email_address(value)
        @view.edh_notifications.when_present.set value
      end

      def change_edh_api_key(value)
        @view.api_key.when_present.set value
      end

      def invalid_api_message_visible(value)
        @view.invalid_api_message.text.include? value
      end

      def click_save_and_close_mappings_modal
        @view.edh_integration_edit_mappings_save.when_present.click
      end

      def set_new_fund_name(value)
        @view.new_fund_name.when_present.set value
      end

      def set_new_campaign_name(value)
        @view.new_campaign_name.when_present.set value
      end

      def set_new_approach_name(value)
        @view.new_approach_name.when_present.set value
      end

      def import_now_confirm_button_click
        @view.import_now_confirm_button.when_present.click
      end

      def participation_fundraiser_drop_down_value
        @view.participation_fundraiser_drop_down.value
      end

      def participation_fundraiser_date_value
        @view.participation_fundraiser_date.when_present.value
      end

      def specific_journal_entry_click(value)
        @view.specific_journal_entry(value).when_present.click
      end

      def gift_fundraiser_donation_message_value
        @view.gift_fundraiser_donation_message.value
      end

      def gift_receipt_field_value
        @view.gift_receipt_field.value
      end

      def gift_date_value
        @view.gift_date.when_present.value
      end

    end
  end
end

