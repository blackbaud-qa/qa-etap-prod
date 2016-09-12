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

      def set_expiration_month month_value
        (@view.expiration_month month_value).when_present.click
      end

      def set_expiration_year year_value
        (@view.expiration_year year_value).when_present.click
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

      def set_finalized_checkbox(value)
        @view.finalized_checkbox.when_present.set value
      end

      def save
        @view.click_and_confirm_alert(@view.save)
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

      def tribute_account_delete
        @view.tribute_delete.when_present.click
      end

      def click_find
        @view.popup_search_find.when_present.click
      end

      def search_glass
        @view.search_icon2.when_present.click
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
        @view.save_and.when_present.select(value)
      end

      def click_save_for_error
        @view.browser.without_checkers do
          @view.save_and_button.when_present.click
        end
      end

      def click_save_and
        click_save_for_error
        sleep 1
        if(browser.alert.exists?)
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
        @view.click_and_confirm_alert(@view.payment_delete_button)
      end

      def pledge_entry_click
        @view.pledge_entry_to_click.when_present.click
      end

      def more_options_link_click
        @view.more_options_link.when_present.click
      end

      def filters_icon_click
        @view.filters_icon.when_present.click
      end

      def uncheck_all_link_click
        @view.uncheck_all_link.when_present.click
      end

      def clear_button_click
        @view.clear_button.when_present.click
      end

      def pledge_checkbox_click
        sleep 3
        @view.filter_pledge_checkbox_label.when_present.click
      end

      def find_button_journal_page_click
        @view.find_button_journal_page.when_present.click
      end

      def apply_journal_filters_click
        @view.apply_filters_button.when_present.click
      end
      def filter_journal_results(item)
        puts browser.text.include?(item) == '0 Journal Entries'
      end

      def journal_entry_exists?(message)
        @view.journal_filter_results.when_present.text.include? message
      end

      def copy_pledge_udfs_click
        @view.copy_pledge_udfs.when_present.click
      end

      def account_click(account)
        @view.content.table(:id=>/bbgrid-table/).a(:text, account).when_present.click
      end

      def journal_page_gift_click
        @view.journal_page_gift.when_present.click
      end

      def journal_page_note_click
        @view.journal_page_note.when_present.click
      end

      def note_present?
        sleep 3
        return @view.journal_page_note.present?
      end

      def note_page_delete_click
        @view.click_and_confirm_alert(@view.note_page_delete)
        # @view.note_page_delete.when_present.click
      end

      def journal_soft_credit_gift_click
        @view.journal_page_soft_credit.when_present.click
      end

      def journal_soft_credit_delete_click
        @view.click_and_confirm_alert(@view.journal_soft_credit_delete)
      end

      def journal_pledge_click
        @view.journal_pledge.when_present.click
      end

      def journal_gift_non_deductible_amount
        @view.non_deductible_field.when_present.value
      end

      def set_fund_segment_one(name)
        @view.fund_type_segment_one.when_present.click
        @view.fund_combo_list_segment_one.when_present.div(:text,name).click
      end

      def set_campaign_segment_one(name)
        @view.campaign_type_segment_one.when_present.click
        @view.campaign_combo_list_segment_one.when_present.div(:text,name).click
      end

      def set_approach_segment_one(name)
        @view.approach_type_segment_one.when_present.click
        @view.approach_combo_list_segment_one.when_present.div(:text,name).click
      end

      def on_recurring_gift_page?
        @view.page_title.text.include? 'New Recurring Gift Schedule'
      end

      def process_type_sepa_set?
        return @view.process_type_sepa.when_present.set?
      end

      def journal_BIC
        return @view.BIC.when_present.value
      end

      def mandate_id_generated?
        return !(@view.mandate_id.present?)
      end

      def journal_page_participation_exists?
        @view.journal_page_participation.present?
      end

      def set_fund_segment_two(name)
        @view.fund_type_segment_two.when_present.click
        @view.fund_combo_list_segment_two.when_present.div(:text,name).click
      end

      def set_campaign_segment_two(name)
        @view.campaign_type_segment_two.when_present.click
        @view.campaign_combo_list_segment_two.when_present.div(:text,name).click
      end

      def set_approach_segment_two(name)
        @view.approach_type_segment_two.when_present.click
        @view.approach_combo_list_segment_two.when_present.div(:text,name).click
      end

      def set_gift_type_segment_one(value)
        @view.set_gift_type_segment_one_value.select(value)
      end

      def tribute_bar_click_segment_one
        @view.tribute_bar_click_segment_one_click.when_present.click
      end

      def gift_bar_segment_one_click
        @view.gift_bar_segment_one.when_present.click
      end

      def tribute_icon_click_segment_one
        @view.tribute_icon_click_segment_one_click.when_present.click
      end

      def soft_credit_icon_click_segment_one
        @view.soft_credit_icon_click_segment_one_click.when_present.click
      end

      def tribute_bar_click_segment_two
        @view.tribute_bar_click_segment_two_click.when_present.click
      end

      def soft_credit_icon_click_segment_two
        @view.soft_credit_icon_click_segment_two_click.when_present.click
      end

      def user_defined_fields_bar_segment_two
        @view.user_defined_fields_bar_segment_two_click.when_present.click
      end

      def click_segment_two_udf(udf)
        @view.click_segment_two_udf_click(udf).when_present.click
      end

      def set_segment_two_udf_value(udf, value)
        @view.click_segment_two_udf_click(udf).parent.text_field.set value
      end

      def expand_all_segments
        @view.expand_all_segments_click.when_present.click
      end

      def expand_all_segments_exists?
        sleep 1
        return @view.expand_all_segments_click.present?
      end

      def delete_split_transaction
        @view.click_and_confirm_alert(@view.split_transaction_delete_button)
      end

      def mark_split_transaction_box
        sleep 3
        @view.filter_split_transaction_checkbox_label.when_present.click
      end

      def segment_one_received_amount
        @view.segment_one_received_field.when_present.value
      end

      def segment_one_fund
        @view.segment_one_fund_value.when_present.value
      end

      def segment_one_campaign
        @view.segment_one_campaign_value.when_present.value
      end

      def segment_one_approach
        @view.segment_one_approach_value.when_present.value
      end

      def segment_one_check_date
        @view.segment_one_check_date_value.when_present.value
      end

      def gift_link_present?
        return @view.journal_page_gift.present?
      end

      def soft_credit_link_present?
        return @view.journal_page_soft_credit.present?
      end

      def split_transaction_link_present?
        return @view.journal_split_transaction_click.present?
      end

      def pledge_link_present?
        return @view.journal_pledge.present?
      end

      def segment_one_check_number
        @view.segment_one_check_number_value.when_present.value
      end

      def segment_one_tribute?(tribute)
        @view.segment_one_tribute_value.when_present.text.include? tribute
      end

      def segment_one_soft_credit_name?(value)
        @view.segment_one_soft_credit_name_value.when_present.text.include? value
      end

      def segment_one_soft_credit_amount
        @view.segment_one_soft_credit_amount_value.when_present.value
      end

      def segment_two_received_amount
        @view.segment_two_received_field.when_present.value
      end

      def segment_two_fund
        @view.segment_two_fund_value.when_present.value
      end

      def segment_two_campaign
        @view.segment_two_campaign_value.when_present.value
      end

      def segment_two_approach
        @view.segment_two_approach_value.when_present.value
      end

      def segment_two_tribute?(tribute)
        @view.segment_two_tribute_value.when_present.text.include? tribute
      end

      def segment_two_soft_credit_name?(value)
        @view.segment_two_soft_credit_name_value.when_present.text.include? value
      end

      def segment_two_soft_credit_amount
        @view.segment_two_soft_credit_amount_value.when_present.value
      end

      def segment_two_udf(udf)
        @view.click_segment_two_udf_click(udf).parent.span.text
      end

      def udf_bar_click_segment_two
        @view.udf_bar_click_segment_two_click.when_present.click
      end

      def journal_split_transaction
        @view.journal_split_transaction_click.when_present.click
      end

      def segment_three_received_amount
        @view.segment_three_received_field.when_present.value
      end

      def set_fund_segment_three(name)
        @view.fund_type_segment_three.when_present.click
        @view.fund_combo_list_segment_three.when_present.div(:text,name).click
      end

      def set_gift_type_segment_three(value)
        @view.set_gift_type_segment_three_value.select(value)
      end

      def segment_three_check_date
        @view.segment_three_check_date_value.when_present.value
      end

      def segment_three_check_number
        @view.segment_three_check_number_value.when_present.value
      end

      def delete_segment_three
        @view.click_and_confirm_alert(@view.delete_segment_three_click)
      end

      def edit_segment(segments)
        @view.edit_segment_value.when_present.send_keys [:control, 'a']
        @view.edit_segment_value.when_present.send_keys segments
      end

      def account_header_link(link)
        @view.account_header_link_click(link).when_present.click
      end

      def select_auto_process
        @view.select_auto_process_option.when_present.set
      end

      def select_rgs_frequency(value)
        @view.select_rgs_frequency_value.when_present.select (value)
      end

      def journal_entry_click(type)
        @view.journal_entry_click_link(type).when_present.click
      end

      def recurring_gift_message?(message)
        @view.processed_transaction_message.when_present.text.include? message
      end

      def verify_transaction_date_value
        @view.transaction_date_value.wait_until_present
        temp = Date.parse @view.transaction_date_value.value
        return temp.strftime('%x')
      end

      def my_organization_click
        @view.my_organization_link.when_present.click
      end

      def ecommerce_processor(value)
        @view.ecommerce_processor_link(value).when_present.click
      end

      def verify_eft_enabled
          if @view.eft_enabled_yes.when_present.set? ==true
          then @view.click_save_button.when_present.click
        else
            if @view.eft_enabled_yes.when_present.set? ==false
            then @view.eft_enabled_yes.when_present.set
            @view.click_save_button.when_present.click
            end
          end
      end

      def pledge_received_amount_click
        @view.received_field.when_present.click
      end

      def select_manual_process
        @view.select_manual_process_option.when_present.set
      end

      def add_installment_button
        @view.add_installment_button.present?
      end
    end
  end
end

