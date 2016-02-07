module Cukesetaptesting
  module Account
    class Search < BaseController
      @model = SearchModel
      @view = SearchView

      def find_click
        @view.find_button.when_present.click
      end

      def advanced_click
        @view.advanced_link.when_present.click
      end


      def exact_match_click
        @view.exact_button.when_present.click
      end

      def account_name_exists?(name)
        # if @view.table_content.when_present.text.contains? "0 accounts found"
        #   return false
        # end

        return @view.account_name.when_present.text.include? name

      end

      def search_result_count_message
        @view.search_result_count_message.when_present.text
      end

      def search_field_contains?(text)
        return @view.search_field.when_present.value.include? text
      end

      def email_field_contains?(text)
        return @view.email_field.when_present.value.include? text
      end

      def set_search_field(name)
        @view.search_field.when_present.value = name
      end

#Role memebers-  may be able to move to a new class, but likely unnecessary
      def role_icon_click
        @view.role_icon.when_present.click
      end

      def role_menu_home_click
        @view.role_menu_home.when_present.click
      end

      def role_menu_personas_click
        @view.role_menu_personas.when_present.click
      end

      def role_menu_relationships_click
        @view.role_menu_relationships.when_present.click
      end

      def role_menu_journal_click
        @view.role_menu_journal.when_present.click
      end

      def role_menu_other_click
        @view.role_menu_other.when_present.click
      end

      def role_menu_defined_fields_click
        @view.role_menu_defined_fields.when_present.click
      end

      def press_enter
        @view.browser.send_keys :enter
      end

      def arrow_down
        sleep 1
        @view.browser.send_keys :arrow_down
      end

      def set_search_constituents_checkbox(value)
        @view.constituents_checkbox.when_present.set value
      end

      def set_search_users_checkbox(value)
        @view.users_checkbox.when_present.set value
      end

      def set_search_tributes_checkbox(value)
        @view.tributes_checkbox.when_present.set value
      end

      def set_search_teams_checkbox(value)
        @view.teams_checkbox.when_present.set value
      end

      def gift_box_icon_click
        @view.gift_box_icon.when_present.click
      end

      def new_gift_and_pledge_page
        @view.new_gift_and_pledge_page.present?
      end

      def move_values_link
        @view.move_values_link.when_present.click
      end

      def move_business_value
        @view.move_business_value.when_present.click
      end

      def move_value_to_attributes
        @view.move_value_to_attributes.click
      end

      def move_button
        @view.move_button.click
      end

      def attributes_udf
        @view.attributes_udf.click
      end

      def move_value_to_account_type
        @view.move_value_to_account_type.click
      end

      def edit_user_defined_field_categories_page
        @view.edit_user_defined_field_categories_page.present?
      end
    end

  end
end

