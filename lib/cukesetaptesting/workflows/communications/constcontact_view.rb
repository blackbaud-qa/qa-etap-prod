module Cukesetaptesting
  module Communications
    class ConstcontactView < BaseView
      keyword(:const_cont_title)  {cc_form.h3 }

      keyword(:cc_user_name) {content.text_field(:id, 'username')}
      keyword(:cc_password) {content.text_field(:id, 'password')}
      keyword(:cc_manage_preferences) {content.a(:text, 'Manage Preferences')}
      keyword(:cc_save) {content.button(:value, 'Save')}
      keyword(:page_title) {content.form(:name, 'ccExportForm').h1(:class, 'pageTitle')}
      keyword(:warning_message) {content.div(:id, 'mainContent').div(:class, 'informationError')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

      def cc_form
        content.form(:name, 'ccPreferencesForm')
      end

      def communications_link(value)
        content.a(:text, value)
      end

    end
  end
end
