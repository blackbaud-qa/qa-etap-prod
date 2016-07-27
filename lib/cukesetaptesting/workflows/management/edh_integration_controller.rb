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
    end
  end
end

