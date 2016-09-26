module Cukesetaptesting
  module Management
    class EdhIntegrationView < BaseView
      keyword(:management_integrations) {content.a(:text,'Integrations')}
      keyword(:integrations_page_check) {content.h2(:text,'everydayhero Integration')}
      keyword(:set_up) {content.button(:id,'setupEdhImport')}
      keyword(:api_key) {content.text_field(:id,'apiKey')}
      keyword(:edh_integration_next) {content.button(:id,'wizardNext')}
      keyword(:edh_integration_previous) {content.button(:id,'wizardPrevious')}
      keyword(:edh_integration_save) {content.button(:id,'edhBasicSettingsModalSave')}
      keyword(:edh_integration_cancel) {content.button(:id,'edhBasicSettingsModalCancel')}
      keyword(:setup_edh_modal) {content.h1(:text,'Set up everydayhero integration')}
      keyword(:edh_notifications) {content.text_field(:id,'notificationEmail')}
      # keyword(:basic_integration_save) {content.div(:id,'<placeholderID>')}
      keyword(:integrations_page_content) {content.div(:id,'<placeholderID>')}
      keyword(:map_campaigns) {content.div(:id,'<placeholderID>')}
      keyword(:default_fund) {content.select(:id,'defaultFund')}
      keyword(:default_campaign) {content.select(:id,'defaultCampaign')}
      keyword(:default_approach) {content.select(:id,'defaultApproach')}
      # keyword(:campaign_mappings_save) {content.div(:id,'<placeholderID>')}
      keyword(:select_historical_data) {content.div(:id,'<placeholderID>')}
      keyword(:historical_data_modal) {content.div(:id,'<placeholderID>')}
      keyword(:all_historical_data) {content.radio(:id,'allData').parent.span}
      keyword(:historical_data_created_since) {content.radio(:id,'partialData').parent.span}
      # keyword(:historical_data_save) {content.div(:id,'<placeholderID>')}
      keyword(:import_button) {content.div(:id,'<placeholderID>')}
      keyword(:edit_integration_page) {content.button(:id, 'edhOpenSettingsButton')}
      keyword(:us_edh_signup) {content.a(:text,/Sign up here/)}
      keyword(:us_edh_signup_page_element) {browser.a(:href,'https://www.everydayhero.com/us/nonprofits/')}
      keyword(:edh_user_guide) {content.i(:text, 'everydayhero/eTapestry')}
      keyword(:edh_user_guid_page_element) {content.div(:id,'<placeholderID>')}
      keyword(:edh_start_import_button) {content.div(:id,'startEdhImport')}
      keyword(:select_API_key_value) {content.input(:id, 'apiKey')}
      keyword(:select_edh_email_value) {content.input(:id, 'notificationEmail')}
      keyword(:edit_set_up) {content.button(:id,'edhOpenSettingsButton')}
      keyword(:edit_mappings) {content.button(:id,'edhOpenMappingsButton')}
      keyword(:edh_integration_modal_error) {content.div(:id,'<placeholderID>')}
      keyword(:api_key_validation) {content.div(:id, '<placeholderID>')}
      keyword(:edh_email_validation) {content.div(:id, '<placeholderID>')}
      keyword(:import_now_link) {content.button(:id, 'edhImportNowButton')}
      keyword(:import_finish_successfully_message) {content.div(:class, 'alert alert-success alert-dismissible')}
      keyword(:new_fund_link) {content.a(:href, 'editIntent.do')}
      keyword(:new_campaign_link) {content.a(:href, 'editCampaign.do')}
      keyword(:new_approach_link) {content.a(:href, 'editApproach.do')}
      keyword(:edh_integration_edit_mappings_save) {content.button(:id, 'edhMappingsModalSave')}
      keyword(:edh_integration_edit_mappings_cancel) {content.button(:id, 'edhMappingsModalCancel')}
      keyword(:edh_pause_integration_link) {content.button(:id, 'edhPauseIntegrationLink')}
      keyword(:edh_resume_integration_link) {content.button(:id, 'edhResumeIntegrationLink')}
      keyword(:edh_integration_paused_message) {content.div(:class, 'alert alert-warning')}
      keyword(:journal_page_participation_link) {content.div(:class, 'ui-jqgrid-bdiv').a(:text, 'Participation')}
      keyword(:participant_goal) {content.text_field(:name, 'goal')}
      keyword(:participation_display_name) {content.input(:name, 'eventParticipation.displayNameNoDefault')}
      keyword(:invalid_api_message) {content.div(:class, 'alert alert-danger')}
      keyword(:new_fund_name) {content.text_field(:name, 'name')}
      keyword(:new_campaign_name) {content.text_field(:name, 'name')}
      keyword(:new_approach_name) {content.text_field(:name, 'name')}
      keyword(:import_now_confirm_button) {content.button(:id, 'importNowConfirm')}
      keyword(:participation_fundraiser_drop_down) {content.input(:id, 'eventRef_comboText')}
      keyword(:participation_fundraiser_date) {content.text_field(:name, 'datePopulate(eventParticipation.date)')}
      keyword(:gift_fundraiser_donation_message) {content.input(:name, 'donorMessage')}
      keyword(:gift_receipt_field) {content.input(:name, 'receiptId')}
      keyword(:gift_date) {content.input(:id, 'date')}
      keyword(:cc_number) {content.input(:name, 'creditCardNumber')}
      keyword(:cc_exp_month) {content.select(:name, 'creditCardExpirationMonth')}
      keyword(:cc_exp_year) {content.select(:name, 'creditCardExpirationYear')}
      keyword(:cc_type) {content.select(:name, 'creditCardType')}
      keyword(:journal_note_text_field) {content.text_field(:id, 'editBox')}


      def specific_journal_entry(value)
        content.div(:class, 'ui-jqgrid-bdiv').a(:text, value)
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
