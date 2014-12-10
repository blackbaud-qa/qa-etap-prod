module Cukesetaptesting
  module Admin
    class UserprefsView < BaseView
      keyword(:prefs_header)  { content.div(:id, 'etap.fieldset.link.2') }
      keyword(:user_title) {content.div(:id,'entityRoleHome').div(:id,'etap.fieldset.area.1')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
