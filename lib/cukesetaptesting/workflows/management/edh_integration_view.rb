module Cukesetaptesting
  module Management
    class EdhIntegrationView < BaseView
      keyword(:management_integrations) {content.a(:text,'Integrations')}
      keyword(:integrations_page_check) {content.div(:id,'<placeholderID>')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
