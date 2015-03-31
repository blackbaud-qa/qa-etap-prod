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

    def set_new_fundraiser_status_active
      @view.new_fundraiser_status.when_present.select "Active"
    end

      def new_fundraiser_next_click
        sleep 1
        @view.new_fundraiser_next.when_present.click
      end

      def new_fundraiser_set_template_float
        sleep 3
        @view.new_fund_templatefloat.when_present.set
      end

      def select_main_page_text
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
        @view.new_fundraiser_save_and_finish.when_present.click
      end

      def fundraiser_page_url_click
      #  @view.fundraiser_page_url.when_present.click
        @view.fundraiser_page_url.when_present.click
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
        @view.select_status_disabled.when_present.click
      end

    end
  end
end

