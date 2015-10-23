module Cukesetaptesting
  module Management
    class SecurityGroupsView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }

      keyword(:new_security_group_link)  { content.a(:text=>'New Security Group') }
      keyword(:security_group_name)  { content.text_field(:title=>'Name') }
      keyword(:save_button) { content.button(:value=>'Save')}

      keyword(:default_sec_group)  { content.a(:href => /editSecurityGroup.do/, :name=> /Default/) }
      keyword(:admin_sec_group)  { content.a(:href => /editSecurityGroup.do/, :name=> /Admin/) }


      keyword(:account_read_query_grant) { content.radio(:id=>'entityRoleReadQueryGrant', :value => 'true') }
      keyword(:account_read_query_deny) { content.radio(:id=>'entityRoleReadQueryGrant', :value => 'false') }

      keyword(:account_update_query_grant) { content.radio(:id=>'entityRoleUpdateQueryGrant', :value => 'true') }
      keyword(:account_update_query_deny) { content.radio(:id=>'entityRoleUpdateQueryGrant', :value => 'false') }

      keyword(:journal_entry_read_query_grant) { content.radio(:id=>'journalReadQueryGrant', :value => 'true') }
      keyword(:journal_entry_read_query_deny) { content.radio(:id=>'journalReadQueryGrant', :value => 'false') }

      keyword(:journal_entry_update_query_grant) { content.radio(:id=>'journalUpdateQueryGrant', :value => 'true') }
      keyword(:journal_entry_update_query_deny) { content.radio(:id=>'journalUpdateQueryGrant', :value => 'false') }




      def dropdown_select_by_name name
        content.select_list(:name => name)
      end

      def sec_group_link sec_group_name
        content.a(:text=> /#{sec_group_name}/)
      end

      def user_rights_link user_name
        content.a(:text=> /#{user_name}/)
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
