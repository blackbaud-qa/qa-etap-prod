module Cukesetaptesting
  module Admin
    class Userprefs < BaseController
      @model = UserprefsModel
      @view = UserprefsView


      def on_user_prefs_page?
        @view.prefs_header.when_present.text.include? "User Preferences"
      end

      def on_user_page?
        #This feels redundant, but we need the boolean return from present? but would still like to wait
        #for a timeout as well
        @view.user_title.wait_until_present
        return @view.user_title.exists?
        #@view.user_title.when_present.present?
      end
    end
  end
end

