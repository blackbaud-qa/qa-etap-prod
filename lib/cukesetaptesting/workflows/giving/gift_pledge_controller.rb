module Cukesetaptesting
  module Giving
    class GiftPledge < BaseController
      @model = GiftPledgeModel
      @view = GiftPledgeView

      def calendar_button_click
        @view.calendar_button.when_present.click
      end

      def select_payment_method
        @view.select_payment.when_present.click
      end

      def set_gift_type_check
        @view.check_field.when_present.click
      end

      def enter_card_number
        @view.card_number.when_present.set '4111111111111111'
      end

      def set_expiration_month
        @view.expiration_month.when_present.click
      end

      def set_expiration_year
        @view.expiration_year.when_present.click
      end

      def set_fund(name)
        @view.fund_type.when_present.click
        @view.fund_combo_list.when_present.div(:text,name).click
      end

      def set_campaign(name)
        @view.campaign_type.when_present.click
        @view.campaign_combo_list.when_present.div(:text,name).click
      end

      def set_approach(name)
        @view.approach_type.when_present.click
        @view.approach_combo_list.when_present.div(:text,name).click
      end

      def save
        @view.save.when_present.click
      end

      def saveAnd
        @view.saveAnd.when_present.click
      end

      def click_yes
        @view.yes.when_present.click
      end

      def tribute_bar_click
        @view.tribute_bar.when_present.click
      end

      def set_gift_type(type)
        @view.payment_method.select(type)
      end

      def search_glass_click
        @view.tribute_info.when_present.click
      end

      def click_find
        @view.popup_search_find.when_present.click
      end

      def choose_persona
        @view.tribute_persona.when_present.click
      end

      def search_glass
        @view.search_icon2.when_present.click
      end

      def choose_anne
        @view.persona.when_present.click
      end

      def fund_input_arrow
        @view.fund_input_arrow.when_present.click
      end

      def select_fund_unrestricted
        @view.fund_unrestricted.when_present.click
      end

      def campaign_input_arrow
        @view.campaign_input_arrow.when_present.click
      end

      def select_campaign
        @view.campaign_annual.when_present.click
      end

      def approach_input_arrow
        @view.approach_input_arrow.when_present.click
      end

      def select_approach_unsolicited
        @view.approach.when_present.click
      end

      def select_process
        @view.process_transaction.when_present.click
      end

      def select_edit
        @view.edit.when_present.click
      end

      def select_approach_direct_mail
        @view.approach_direct_mail.when_present.click
      end

      def search_for_an_account_click
        @view.search_for_an_account.when_present.click
      end

      def popup_click_find
        @view.popup_search_find.when_present.click
      end

      def popup_click_link_by_text(text)
        @view.popupTextLink(text).when_present.click
      end

      def tribute_icon_click
        search_glass_click
      end

      def soft_credit_icon_click
        @view.soft_credit_info.when_present.click
      end

      def set_save_and(value)
        @view.save_and.select(value)
      end

      def click_save_and
        begin
        @view.save_and_button.when_present.click
        rescue
          browser.alert.ok
             end
      end

      def journal_gift_persona
        @view.entity_name_value.value
      end

      def journal_gift_date
        @view.date_field.when_present.value
      end

      def journal_gift_received_amount
        @view.received_field.when_present.value
      end

      def journal_gift_fund
        @view.fund.when_present.value
      end

      def journal_gift_campaign
        @view.campaign.when_present.value
      end

      def journal_gift_approach
        @view.approach.when_present.value
      end

      def journal_gift_gift_type_selected?(value)
        @view.payment_method.selected?(value)
      end

      def journal_gift_check_date
        @view.check_date.when_present.value
      end

      def journal_gift_check_number
        @view.check_number.when_present.value
      end

      def journal_gift_tribute
        @view.tribute_name.when_present.text
      end

      def journal_gift_soft_credit
        @view.soft_credit_name.when_present.text
      end

      def journal_gift_soft_credit_amount
        @view.soft_credit_amount.when_present.value
      end

      def click_create_pledge_schedules
        @view.pledge_schedule.when_present.click
      end

      def select_frequency_monthly
        @view.frequency.when_present.click
      end

      def click_pledge_information
        @view.pledge_info_bar.when_present.click
      end

      def click_add_segments
        @view.add_segment.when_present.click
      end

      def journal_link_click
        @view.journal_link.when_present.click
      end

      def add_new_drop_down_click
        @view.add_new_drop_down.when_present.click
      end

      def gift_pledge_click
        @view.gift_pledge.when_present.click
      end

      def select_add_new_journal_entry(name)
        @view.add_new_journal_type.when_present.select(name)
      end

      def create_pledge_schedule_click
        @view.create_pledge_schedule.when_present.click
      end

      def select_frequency(name)
        @view.select_frequency_value.when_present.select(name)
      end

      def add_payment_click
        @view.add_a_payment_for_this_pledge.when_present.click
      end

      def set_payment_check_date
        @view.payment_check_date.when_present.value
      end

      def user_defined_fields_section_click
        @view.user_defined_fields_section.when_present.click
      end

      def gift_types_section_click
        @view.gift_types_section.when_present.click
      end

      def click_payment_udf(udf)
        @view.payment_udf_to_click(udf).when_present.click
       end

      def set_payment_udf_value(udf, value)
        @view.payment_udf_to_click(udf).parent.text_field.set value
      end

      def payment_page_udf(udf)
        @view.payment_udf_to_click(udf).parent.span.text
      end

      def payment_delete_click
        begin
        @view.payment_delete_button.when_present.click
        rescue
          browser.alert.ok
          end
      end


      def pledge_entry_click
        @view.pledge_entry_to_click.when_present.click
      end

      def more_options_link_click
        @view.more_options_link.when_present.click
      end

      def uncheck_all_link_click
        @view.uncheck_all_link.when_present.click
      end

      def pledge_checkbox_click
        @view.pledge_checkbox.when_present.click
      end

      def find_button_journal_page_click
        @view.find_button_journal_page.when_present.click
      end

      def filter_journal_results(item)
        puts browser.text.include?(item) == 'No Journal Entries Found'
      end

      def journal_entry_exists?(message)
        @view.journal_filter_results.when_present.text.include? message
      end

      def copy_pledge_udfs_click
        @view.copy_pledge_udfs.when_present.click
      end

      def bob_barker_junior_click
        @view.bob_barker_junior.when_present.click
      end

      def journal_page_gift_click
        @view.journal_page_gift.when_present.click
      end

      def journal_gift_non_deductible_amount
        @view.non_deductible_field.when_present.value
      end

      end
  end
end

