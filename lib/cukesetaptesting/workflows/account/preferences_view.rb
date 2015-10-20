module Cukesetaptesting
  module Account
    class PreferencesView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }

      keyword(:check_for_duplicates_checkbox) { content.checkbox(:name, 'prefs.dupCheckOnSave') }

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
