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

      def get_started_click
        @view.get_started.when_present.click
      end

      def basic_integration_modal_present?
        sleep 2
        @view.basic_integration_modal.present?
      end

      def basic_integration_save_click
        @view.basic_integration_save.when_present.click
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

      def campaign_mappings_save_click
        @view.campaign_mappings_save.when_present.click
      end

      def select_historical_data_click
        @view.select_historical_data.when_present.click
      end

      def historical_data_modal_present?
        sleep 2
        @view.historical_data_modal.present?
      end

      def all_historical_data_set
        @view.all_historical_data.when_present set
      end

      def historical_data_save_click
        @view.historical_data_save.when_present.click
      end

      def import_button_present?
        sleep 2
        @view.import_button.present?
      end

      def edh_signup_click
        @view.edh_signup.when_present.click
      end

      def on_EDH_sign_up_page?
        sleep 3
        @view.edh_signup_page_element.present?
      end

      def edh_user_guide_click
        @view.edh_user_guide.when_present.click
      end

      def on_EDH_user_guid_page?
        sleep 3
        @view.edh_user_guid_page_element.present?
      end
    end
  end
end

