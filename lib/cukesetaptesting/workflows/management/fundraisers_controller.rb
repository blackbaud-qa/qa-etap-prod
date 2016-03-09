module Cukesetaptesting
  module Management
    class Fundraisers < BaseController
      @model = FundraisersModel
      @view = FundraisersView

    def management_fundraisers_click
      @view.management_fundraisers.when_present.click
    end

    def fundraiser_new_fundraiser_click
      @view.fundraiser_new_fundraiser.when_present.click
    end

    def new_fund_setup_exists?
      sleep 2
      @view.fundraiser_no_fundraisers.present?
    end

    def active_fundraiser_exists?
      return @view.fundraiser_status.text.include? "Active"
    end

    def set_new_fundraiser_status_active
      @view.new_fundraiser_status.when_present.select "Active"
    end

      def new_fundraiser_next_click
        sleep 2
        @view.new_fundraiser_next.when_present.click
      end

      def new_fundraiser_set_template_float
        sleep 3
        @view.new_fund_templatefloat.when_present.set
      end

      def select_main_page_text
        @view.select_main_page_text.wait_until_present
        @view.select_main_page_text.when_present.send_keys [:control, 'a']
      end

      def delete_main_page_text
        @view.select_main_page_text.when_present.send_keys :delete
      end

      def set_main_page_text(text)
        @view.select_main_page_text.when_present.send_keys text
      end

      def main_page_text_bold_click
        @view.main_page_text_bold_click.when_present.click
      end

      def main_page_text_align_center_click
        @view.main_page_text_align_center_click.when_present.click
      end

      def field_name_click
        @view.field_name.when_present.click
      end

      def field_name_base_gender_click
        @view.field_name_base_gender.when_present.click
      end

      def required_check_box_click
        @view.required_check_box.when_present.click
      end

      def new_fundraiser_add_click
        @view.new_fundraiser_add.when_present.click
      end

      def fee_level_fund_click
        @view.fee_level_fund.when_present.click
      end

      def fee_level_fund_general_click
        @view.fee_level_fund_general.when_present.click
      end

      def new_fundraiser_add_fee_level_click
        @view.new_fundraiser_add_fee_level.when_present.click
      end

      def second_fee_level_fund_click
        @view.fee_level_fund.when_present.click
      end

      def second_fee_level_fund_general_click
        @view.fee_level_fund_general.when_present.click
      end

      def applied_to_donations_fund_click
        sleep 3
        @view.applied_to_donations_fund.when_present.click
      end

      def applied_to_donations_fund_general_click
        @view.applied_to_donations_fund_general.when_present.click
      end

      def new_fundraiser_save_and_finish_click
        sleep 1
        @view.new_fundraiser_save_and_finish.when_present.click
        # @view.fundraisers_grid.wait_until_present
      end

      def sort_status_click
        @view.sort_status.when_present.click
      end

      def fundraiser_page_url_click
      #  @view.fundraiser_page_url.when_present.click
        @view.fundraiser_page_title.wait_until_present
        @view.fundraiser_page_title.parent.parent.div(:class,'actions').a.when_present.click
      end

      def fundraiser_on_fund_page?
        # @view.browser.window(:title => "QA Fundraiser 1").use do
        @view.browser.windows.last.use do
          @view.new_fundraiser_page_title.wait_until_present
          @retVal = @view.new_fundraiser_page_title.exists?
        end
        # @view.browser.window(:title => "QA Fundraiser 1").close
        @view.browser.windows.last.close
        return @retVal

      end

      def fundraiser_changes_made? text
        @view.browser.windows.last.use do
          @view.new_fundraiser_content.wait_until_present
          @retVal = @view.new_fundraiser_content.text.include? text

        end

        @view.browser.windows.last.close
        return @retVal
      end

      def fundraiser_page_title_click
        @view.fundraiser_page_title.when_present.click
      end

      def existing_fundraiser_change_template_chisel
        @view.existing_fund_templatechisel.when_present.set
      end

      def main_page_text_align_left_click
        @view.main_page_text_align_left_click.when_present.click
      end

      def select_status_click
        @view.select_status.when_present.click
      end

      def select_status_disabled_click
        @view.select_status.when_present.select 'Disabled'
      end

      def register_click
        @view.register.when_present.click
      end

      def create_account_select
        @view.create_account.when_present.set
      end

      def live_fundraiser_next_click
        @view.live_fundraiser_next.when_present.click
      end

      def security_question_set question
        @view.live_fundraiser_security_question.when_present.select question
      end

      def live_fundraiser_country_select country
        @view.live_fundraiser_country.when_present.select country
      end

      def live_fundraiser_state_select state
        @view.live_fundraiser_state.when_present.select state
      end

      def live_fundraiser_gender_select gender
        @view.live_fundraiser_gender.when_present.select gender
      end

      def live_fundraiser_create_new_team_set
        @view.live_fundraiser_create_new_team.when_present.set
      end

      def live_fundraiser_runner_set
        @view.live_fundraiser_runner.when_present.set
      end

      def live_fundraiser_use_account_billing_set
        @view.live_fundraiser_use_account_billing.when_present.set
      end

      def live_fundraiser_card_type_set card
        @view.live_fundraiser_card_type.when_present.select card
      end

      def live_fundraiser_card_exp_month_select exp
        @view.live_fundraiser_card_exp_month.when_present.select exp
      end

      def live_fundraiser_card_exp_select exp
        @view.live_fundraiser_card_exp.when_present.select exp
      end

      def live_fundraiser_payment_type_cc_set
        @view.live_fundraiser_payment_type_cc.when_present.set
        sleep 1
      end

      def fundraising_content_text_contains? msg
        @view.fundraising_content.wait_until_present
        return @view.fundraising_content.text.include? msg
      end

      def previous_name_used?
        @view.fundraising_content.wait_until_present
        return @view.fundraising_content.text.include? 'name matched an existing'
      end

      def login_click
        @view.login.when_present.click
      end

      def login_button_click
        @view.login_button.when_present.click
      end

      def fundraising_center_text_contains? title
        @view.fundraising_center_title.wait_until_present
        return @view.fundraising_content.text.includes? title
      end

      def make_donation_click
        @view.make_donation.when_present.click
      end

      def team_goal_select
        @view.team_goal_select.when_present.set
        sleep 1
      end

      def team_search_click
        @view.team_search.when_present.click
        sleep 1
      end

      def john_sponsor_set
        @view.john_sponsor.when_present.set
      end

      def billing_country_select country
        @view.billing_country.when_present.select country
      end

      def billing_state_select state
        @view.billing_state.when_present.select state
      end

      def donation_type_select type
        @view.donation_type.when_present.select type
      end

      def find_team_click
        @view.find_team.when_present.click
      end

      def participant_search_click
        @view.participant_search.when_present.click
      end

      def participant_search_results_click name
        @view.browser.a(:text,name).when_present.click
      end

      def participant_donors_contains? name
        @view.participant_donors.wait_until_present
        @view.participant_donors.text.include? name
      end

    end
  end
end

