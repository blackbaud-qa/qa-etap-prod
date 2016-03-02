module Cukesetaptesting
  module Management
    class UserDropdownView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }

      keyword(:down_arrow)  { content.i(:id, 'menuUser') }

      keyword(:my_user)  { content.link(:href, /entityRoleHome.do/) }
      keyword(:my_preferences)  { content.link(:href, /editUserPrefs.do/) }
      keyword(:my_organization)  { content.link(:href, /editOrganization.do/) }
      keyword(:workstation_info)  { content.link(:href, /workstationInfo.jsp/) }

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
