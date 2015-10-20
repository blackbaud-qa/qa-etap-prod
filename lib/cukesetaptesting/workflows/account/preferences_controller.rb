module Cukesetaptesting
  module Account
    class Preferences < BaseController
      @model = PreferencesModel
      @view = PreferencesView


      def set_check_for_duplicates_checkbox(value)
        @view.check_for_duplicates_checkbox.when_present.set value
      end
    end
  end
end

