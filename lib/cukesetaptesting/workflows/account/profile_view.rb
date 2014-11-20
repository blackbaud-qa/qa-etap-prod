module Cukesetaptesting
  module Account
    class ProfileView < BaseView
      keyword(:constit_summary)  { content.div(:id, "followMeDiv1") }
      keyword(:home_page_class) { content.div(:class, "homePageFollow") }
      keyword(:persona_page) { content.form(:name, "personaForm")}
      keyword(:relationships_page) {content.div(:id, "relationships_summary_1")}
      keyword(:journal_page) {content.form(:name, "entityJournalForm")}
      keyword(:other_page) {content.form(:name, "entityOtherForm")}
      keyword(:defined_fields_page) {content.form(:name, "entityUserDefinedValuesForm")}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
