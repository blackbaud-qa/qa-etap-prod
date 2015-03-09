module Cukesetaptesting
  module Account
    class AddAccount < BaseController
      @model = AddAccountModel
      @view = AddAccountView

      def on_add_account_page?
        @view.add_account_element.when_present.present?
      end

      def find_screen_add_account_click
        @view.find_screen_add_account.when_present.click
      end

      def click_udf(udf)
      @view.udf_to_click(udf).when_present.click
      end

      def set_udf_value(udf, value)
        @view.udf_to_click(udf).parent.text_field.set value
      end

      def john_doe_link_click
        @view.john_doe_link.when_present.click
      end

      def other_link_click
        @view.other_link.when_present.click
      end

      def delete_role_button_click
        @view.delete_role_button.when_present.click
      end

      def yes_button_click
        @view.yes_button.when_present.click
      end

      def new_account_persona
        @view.role_name_value.value
      end

      def persona_page_address_lines
        @view.address_field.when_present.value
      end

      def persona_page_city
        @view.city_field.when_present.value
      end

      def persona_page_state
        @view.state_field.when_present.value
      end

      def persona_page_postal_code
        @view.postal_code_field.when_present.value
      end

      def persona_page_county
        @view.county_field.when_present.value
      end

      def persona_page_voice
        @view.voice_field.when_present.value
      end

      def persona_page_email
        @view.email_field.when_present.value
      end

      def persona_page_web_page
        @view.web_page_field.when_present.value
      end

      def persona_page_note
        @view.note_field.when_present.value
      end

      def persona_page_short_salutation
        @view.short_salutation_field.when_present.value
      end

      def persona_page_long_salutation
        @view.long_salutation_field.when_present.value
      end

      def persona_page_company(udf)
        @view.udf_to_click(udf).parent.span.text
      end



      end
    end
  end

