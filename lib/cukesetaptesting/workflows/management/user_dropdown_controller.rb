module Cukesetaptesting
  module Management
    class UserDropdown < BaseController
      @model = UserDropdownModel
      @view = UserDropdownView

      def down_arrow_click
        @view.down_arrow.when_present.click
      end

      def my_user_click
        @view.my_user.when_present.click
      end

      def my_preferences_click
        @view.my_preferences.when_present.click
      end

      def my_organization_click
        @view.my_organization.when_present.click
      end

      def workstation_info_click
        @view.workstation_info.when_present.click
      end
    end
  end
end

