module Cukesetaptesting
  module Admin
    class Userprefs < BaseController
      @model = UserprefsModel
      @view = UserprefsView


      def on_user_prefs_page?
        @view.prefs_header.when_present.text.include? "User Preferences"
      end
    end
  end
end

