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

      def is_split_names?
        first_name_present = @view.new_account_first_name.present?
        last_name_present = @view.new_account_last_name.present?
        #@view.content.div(:id,'etap.fieldset.table.2').wait_until_present
        # sleep 5
        # first_name_present = @view.new_account_first_name.exists?
        # last_name_present = @view.new_account_last_name.exists?

        return first_name_present && last_name_present
      end

      def click_udf(udf)
      @view.udf_to_click(udf).when_present.click
      end

      def set_udf_value(udf, value)
        @view.udf_to_click(udf).parent.text_field.set value
      end

      def set_login_id(value)
        @view.login_id.when_present.set value
      end

      def set_user_password(value)
        @view.password.when_present.set value
      end

      def set_user_password_confirm(value)
        @view.repassword.when_present.set value
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
        Watir::Wait.until {@view.role_name_value.exists?}
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

      def set_constituent_checkbox(value)
        @view.constituent_checkbox.when_present.set value
      end

      def set_tribute_checkbox(value)
        @view.tribute_checkbox.when_present.set value
      end

      def set_user_checkbox(value)
        @view.user_checkbox.when_present.set value
      end

      def set_team_checkbox(value)
        @view.team_checkbox.when_present.set value
      end

      def set_role_checkbox(role_name, value)
        if (value != true && value != false)
          value = true
        end

        if (role_name == 'constituent')
          set_constituent_checkbox value
        elsif (role_name == 'tribute')
          set_tribute_checkbox value
        elsif (role_name == 'user')
          set_user_checkbox value
        elsif (role_name == 'team')
          set_team_checkbox value
        end
      end

      # def create_person (account_name, sort_name, address = '', city = '', state = '', postal_code = '', county = '', voice = '', email = '', web_page = '', note = '', short_sal = '', long_sal = '', udf_name = 'Company', udf_value = '', desired_next_page = 'Go to Personas')
      #   step "I am logged into eTap"
      #   step "I click Accounts"
      #   step %Q[I click on Add Account on the find account screen]
      #   step %Q[I set Name to '#{account_name}' on the classic add account page]
      #   step %Q[I set Sort Name to '#{sort_name}' on the classic add account page]
      #   step %Q[I set Address Lines to '#{address}' on the classic add account page]
      #   step %Q[I set City to '#{city}' on the classic add account page]
      #   step %Q[I set State to '#{state}' on the classic add account page]
      #   step %Q[I set Postal Code to '#{postal_code}' on the classic add account page]
      #   step %Q[I set County to '#{county}' on the classic add account page]
      #   step %Q[I set Voice to '#{voice}' on the classic add account page]
      #   step %Q[I set Email to '#{email}' on the classic add account page]
      #   step %Q[I set Web Page to '#{web_page}' on the classic add account page]
      #   step %Q[I set Note to '#{note}' on the classic add account page]
      #   step %Q[I set Short Salutation to '#{short_sal}' on the classic add account page]
      #   step %Q[I set Long Salutation to '#{long_sal}' on the classic add account page]
      #   step %Q[I set the UDF '#{udf_name}' to '#{udf_value}' on the classic add account page]
      #   step %Q[I click Save And '#{desired_next_page}'] # eg: 'Go to Personas'
      # end

      end
    end
  end

