module Cukesetaptesting
  module Admin
    class Massupdates < BaseController
      @model = MassupdatesModel
      @view = MassupdatesView

      def on_mass_updates_page?
        return @view.mass_updates_title.when_present.text.include? 'Mass Updates'
      end

      def mass_update_link_click
        @view.mass_update_link.when_present.click
      end

      def update_existing_accounts_link_click
        @view.update_existing_accounts_link.when_present.click
      end

      def select_query_category(value)
        sleep 3
        @view.select_query_category_value.when_present.select(value)
      end

      def select_the_query(value)
        @view.select_the_query_value.when_present.select(value)
      end

      def click_udf(udf)
        @view.udf_to_click(udf).when_present.click
      end

      def set_udf_value(udf, value)
        @view.udf_to_click(udf).parent.select.set value
      end

      def mass_update_next_click
        # begin
          sleep 3
          @view.click_and_confirm_alert(@view.mass_update_next)
        # rescue
          # browser.alert.ok
        # end
      end

      def mass_update_number_of_accounts?(number)
        @view.accounts_to_update.when_present.text.include? number
      end

      def mass_update_completed_successfully?(message)
        # sleep 3
        @view.mass_update_results.when_present.text.include? message
      end

      def constituent_account_click(name)
        @view.constituent_account_to_click(name).when_present.click
      end

      def constituent_page_click(page)
        @view.constituent_page_to_click(page).when_present.click
      end

      def select_remove_option
        @view.select_remove.when_present.click
      end

      def click_on_query_category(category)
        @view.click_query_category(category).when_present.click
      end

      def click_on_query(query)
        @view.click_query(query).when_present.click
      end

      def query_preview_screen?(message)
        sleep 3
        @view.query_preview_results.when_present.text.include? message
      end

      def click_create_new_contacts
        @view.create_new_contacts.when_present.click
      end

      def mark_contact_as_final
        @view.mark_contact_final.when_present.click
      end

      def select_contact_method(value)
        @view.contact_method_type.when_present.click
        @view.contact_method_combo_list.when_present.div(:text,value).click
      end

      def contact_journal_entry_exists?
        sleep 1
        return @view.click_contact.present?
      end

      def click_on_contact_journal_entry
        @view.click_contact.when_present.click
      end

      def contact_subject
        @view.contact_subject_text.when_present.value
      end

      def contact_note
        @view.contact_note_text.when_present.value
      end

      def contact_delete_click
        # begin
          @view.click_and_confirm_alert(@view.contact_delete_button)
        # rescue
        #   browser.alert.ok
        # end
      end

      def empty_query
        @view.query_preview_results.present?
      end

      def cannot_perform_mass_update(message)
        sleep 3
        @view.cannot_mass_update.when_present.text.include? message
      end

    end
  end
end

