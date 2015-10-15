module Cukesetaptesting
  module Management
    class SecurityGroups < BaseController
      @model = SecurityGroupsModel
      @view = SecurityGroupsView

      def sec_group_link_click sec_group_name
        (@view.sec_group sec_group_name).when_present.click
      end

      def user_rights_link_click user_name
        (@view.user_rights_link user_name).when_present.click
      end
    end
  end
end

