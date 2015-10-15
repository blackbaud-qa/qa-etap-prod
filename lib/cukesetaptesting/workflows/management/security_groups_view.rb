module Cukesetaptesting
  module Management
    class SecurityGroupsView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }

      keyword(:default_sec_group)  { browser.a(:href => /editSecurityGroup.do/, :name=> /Default/) }
      keyword(:admin_sec_group)  { browser.a(:href => /editSecurityGroup.do/, :name=> /Admin/) }

      def sec_group_link sec_group_name
        content.a(:href => /editSecurityGroup.do/, :text=> /#{sec_group_name}/)
      end

      def user_rights_link user_name
        content.a(:href => /editUserRights.do/, :text=> /#{user_name}/)
        #content.a(:text=> '#{user_name}')
      end


      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
