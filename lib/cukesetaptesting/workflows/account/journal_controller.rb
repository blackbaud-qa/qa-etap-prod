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

    end
  end
end

