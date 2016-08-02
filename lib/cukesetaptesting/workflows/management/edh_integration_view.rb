module Cukesetaptesting
  module Management
    class EdhIntegrationView < BaseView
      keyword(:management_integrations) {content.a(:text,'Integrations')}
      keyword(:integrations_page_check) {content.div(:id,'<placeholderID>')}
      keyword(:set_up) {content.div(:id,'<placeholderID>')}
      keyword(:api_key) {content.text_field(:id,'<placeholderID>')}
      keyword(:edh_integration_next) {content.div(:id,'<placeholderID>')}
      keyword(:edh_integration_previous) {content.div(:id,'<placeholderID>')}
      keyword(:edh_integration_save) {content.div(:id,'<placeholderID>')}
      keyword(:edh_integration_cancel_click) {content.a(:text,'Cancel')}
      keyword(:setup_edh_modal) {content.div(:id,'<placeholderID>')}
      keyword(:notifications) {content.text_area(:id,'<placeholderID>')}
      # keyword(:basic_integration_save) {content.div(:id,'<placeholderID>')}
      keyword(:integrations_page_content) {content.div(:id,'<placeholderID>')}
      keyword(:map_campaigns) {content.div(:id,'<placeholderID>')}
      keyword(:default_fund) {content.select(:id,'<placeholderID>')}
      keyword(:default_campaign) {content.select(:id,'<placeholderID>')}
      keyword(:default_approach) {content.select(:id,'<placeholderID>')}
      # keyword(:campaign_mappings_save) {content.div(:id,'<placeholderID>')}
      keyword(:select_historical_data) {content.div(:id,'<placeholderID>')}
      keyword(:historical_data_modal) {content.div(:id,'<placeholderID>')}
      keyword(:all_historical_data) {content.radio(:id,'<placeholderID>')}
      # keyword(:historical_data_save) {content.div(:id,'<placeholderID>')}
      keyword(:import_button) {content.div(:id,'<placeholderID>')}
      keyword(:edh_signup) {content.a(:text,'click here')}
      keyword(:edh_signup_page_element) {content.div(:id,'<placeholderID>')}
      keyword(:edh_user_guide) {content.a(:text,'everydayhero user guide')}
      keyword(:edh_user_guid_page_element) {content.div(:id,'<placeholderID>')}
      keyword(:edh_start_import_button) {content.div(:id,'<placeholderID>')}
      keyword(:edit_set_up) {content.div(:id,'<placeholderID>')}
      keyword(:edit_mappings) {content.div(:id,'<placeholderID>')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
