module Cukesetaptesting
  module Management
    class MyOrgView < BaseView
      keyword(:federal_id)  {content.text_field(:name=>'federalTaxIdNumber')}
      keyword(:save_and_personas) {content.button(:class=>'saveAndButton')}




      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
