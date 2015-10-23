module Cukesetaptesting
  module Management
    class SecurityGroups < BaseController
      @model = SecurityGroupsModel
      @view = SecurityGroupsView

      # Call with:
      #    'Account Read'
      #    'Account Update'
      #    'Journal Read'
      #    'Journal Update'
      #  and
      #      'Grant' | 'Deny'
      def set_grant_deny target_permission, grant_or_deny

        if target_permission == 'Account Read'
          if grant_or_deny == 'grant'
            @view.account_read_query_grant.when_present.click
          elsif grant_or_deny == 'deny'
            @view.account_read_query_deny.when_present.click
          end

        elsif target_permission == 'Account Update'
          if grant_or_deny == 'grant'
            @view.account_update_query_grant.when_present.click
          elsif grant_or_deny == 'deny'
            @view.account_update_query_deny.when_present.click
          end

        elsif target_permission == 'Journal Read'
          if grant_or_deny == 'grant'
            @view.journal_entry_read_query_grant.when_present.click
          elsif grant_or_deny == 'deny'
            @view.journal_entry_read_query_deny.when_present.click
          end

        elsif target_permission == 'Journal Update'
          if grant_or_deny == 'grant'
            @view.journal_entry_update_query_grant.when_present.click
          elsif grant_or_deny == 'deny'
            @view.journal_entry_update_query_deny.when_present.click
          end
        end

      end

      def set_query_dropdown dropdown_name, dropdown_value
        @view.dropdown_select_by_name(dropdown_name).select dropdown_value
      end


      def set_security_group_name group_name
        @view.security_group_name.when_present.set group_name
      end

      def save_button_click
        @view.click_and_confirm_alert(@view.save_button)
      end

      def new_security_group_link_click
        @view.new_security_group_link.when_present.click
      end

      def sec_group_link_click sec_group_name
        (@view.sec_group sec_group_name).when_present.click
      end

      def user_rights_link_click user_name
        (@view.user_rights_link user_name).when_present.click
      end
    end
  end
end

