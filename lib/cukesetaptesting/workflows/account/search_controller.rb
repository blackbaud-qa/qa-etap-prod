module Cukesetaptesting
  module Account
    class Search < BaseController
      @model = SearchModel
      @view = SearchView

      def find_click
        @view.find_button.when_present.click
      end

      def exact_match_click
        @view.exact_button.when_present.click
      end

      def account_name_exists?(name)

        return @view.table_content.when_present.text.include? name

      end

      def search_field_contains?(text)
        return @view.search_field.when_present.value.include? text
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

    end

  end
end

