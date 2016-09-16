module Cukesetaptesting
  module Account
    class Journal < BaseController
      @model = JournalModel
      @view = JournalView

      def select_gift_pledge
        @view.add_entry.when_present.click
        @view.gift_pledge.when_present.click
      end

      def select_pledge_payment
        @view.add_entry.when_present.click
        @view.pledge_payment.when_present.click
      end

      def select_split_transaction
        @view.add_entry.when_present.click
        @view.split_transaction.when_present.click
      end

      def select_recurring_gift_schedule
        @view.add_entry.when_present.click
        @view.recurring_gift_schedule.when_present.click
      end

      def select_recurring_gift
        @view.add_entry.when_present.click
        @view.recurring_gift.when_present.click
      end

      def select_soft_credit
        @view.add_entry.when_present.click
        @view.soft_credit.when_present.click
      end

      def select_disbursement
        @view.add_entry.when_present.click
        @view.disbursement.when_present.click
      end

      def select_note
        @view.add_entry.when_present.click
        @view.note.when_present.click
      end

      def select_contact
        @view.add_entry.when_present.click
        @view.contact.when_present.click
      end

      def select_participation
        @view.add_entry.when_present.click
        @view.participation.when_present.click
      end

      def select_planned_giving
        @view.add_entry.when_present.click
        @view.planned_giving.when_present.click
      end

      def select_calendar_item
        @view.add_entry.when_present.click
        @view.calendar_item.when_present.click
      end

      def click_date
        @view.gail_date_field.when_present.click
      end

      def wait_for_page_load
        @view.journal_form.wait_until_present
      end

      def journal_table_contains? document
        @view.journal_table.wait_until_present
        return @view.journal_table.text.include? document
      end

      def attachment_link_file_count_click(value)
        @view.journal_attachment_link(value).when_present.click
      end

      def first_attachment_file_size
        @view.first_attachment_file_size_modal_view.when_present.text.include?("0 KB")
      end

      def second_attachment_file_size
        @view.second_attachment_file_size_modal_view.when_present.text.include?("0 KB")
      end

      def attachments_modal_close
        @view.attachments_modal_gray_x.when_present.click
      end

      def attachment_information_section_click
        @view.attachment_information_section.when_present.click
      end

      def upload_attachment_file(file)
        @view.attachments_choose_file_button.when_present.set(file)
      end

      def attachments_upload_button_click
        @view.attachments_upload_button.when_present.click
      end

      def navigate_to_query_page_two
        @view.click_query_page_two.when_present.click
      end

      def navigate_to_query_page_one
        @view.click_query_page_one.when_present.click
      end

      def zoom_out
        # @view.browser.send_keys [:control,:subtract]*2
        @view.browser.send_keys [:command,:subtract]*2
      end

      def query_scroll_bottom
        sleep 2
        @view.content.div(:class,'bb-grid-pagination-container ng-scope').wait_until_present
        @view.browser.execute_script('arguments[0].scrollIntoView();',@view.content.div(:class,'bb-grid-pagination-container ng-scope'))
      end

      def press_page_down
        @view.browser.send_keys :page_down
      end

      def zoom_reset
        # @view.browser.send_keys [:control,:subtract]*2
        @view.browser.send_keys [:command,"0"]
      end

      def click_add_an_account_button_in_menu
        @view.add_an_account_button.when_present.click
      end

      def journal_click_load_more
        @view.journal_load_more.when_present.click
      end

      def journal_page_journal_entry_date(value)
        sleep 5
        @view.journal_page_journal_entry_grid.when_present.text.include? (value)
      end


      def journal_choose_columns_click
        @view.journal_choose_columns.when_present.click
      end


      def journal_column_picker_tribute
         @view.journal_column_picker_tribute.when_present.click
        end
      


      def journal_apply_changes_click
        @view.journal_apply_changes.when_present.click
      end

      def confirm_tribute_column
        @view.confirm_tribute_column.present?
      end

      def confirm_account_name
        @view.confirm_account_name.present?
      end

      def tribute_account_name_click
        @view.tribute_account_name.when_present.click
      end



      def confirm_original_account_home
        @view.confirm_original_account_home.present?
      end


      def original_account_name_click
        @view.original_account_name.when_present.click
      end

      def soft_credit_account_name_click
        @view.soft_credit_account_name.when_present.click
      end

      def confirm_account_name_in_soft_credit_column
        @view.confirm_account_name_in_soft_credit_column.present?
      end

      def confirm_soft_credit_column
        @view.confirm_soft_credit_column.present?
      end

      def journal_soft_credit_click
        @view.journal_soft_credit.when_present.click
      end

      def confirm_account_home
        @view.confirm_account_home_page.present?
      end

      def journal_checkbox_modified_date
        @view.journal_checkbox_modified_date.when_present.click
      end

      def confirm_last_modified_date(value)
       @view.confirm_last_modified_date(value).present?
      end

      def confirm_modified_date_column
        @view.confirm_modified_date_column.present?
      end


    end
  end
end

