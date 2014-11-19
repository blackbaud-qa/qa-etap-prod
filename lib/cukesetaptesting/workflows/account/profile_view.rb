module Cukesetaptesting
  module Account
    class ProfileView < BaseView
      keyword(:constit_summary)  { content.div(:id, "followMeDiv1") }
      keyword(:home_page_class) { content.div(:class, "homePageFollow") }
      keyword(:persona_page) { content.form(:name, "personaForm")}


      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
