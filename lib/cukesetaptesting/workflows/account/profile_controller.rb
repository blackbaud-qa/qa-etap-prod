module Cukesetaptesting
  module Account
    class Profile < BaseController
      @model = ProfileModel
      @view = ProfileView

      def page_click page_name
        (@view.account_header_link page_name).when_present.click
      end

      def journal_link_click
        @view.journal_link.when_present.click
      end

      def constit_name_exists?(name)
        return @view.constit_summary.when_present.text.include? name
      end

      def on_home_page?
        return @view.home_page_class.present?
      end

      def on_personas_page?
        return @view.persona_page.present?
      end

      def on_relationships_page?
        return @view.relationships_page.present?
      end

      def on_journal_page?
        return @view.journal_page.present?
      end

      def on_other_page?
        return @view.other_page.present?
      end

      def on_defined_fields_page?
        base_div_is_present = @view.base_defined_fields_div.present?
        sys_div_is_present = @view.system_defined_fields_div.present?
        return (base_div_is_present && sys_div_is_present)
      end

      def click_select_tiles_and_layout
        @view.select_tiles_and_layout_link.click
      end

      def choose_three_equal_columns_layout
        @view.three_equal_columns_layout.set
      end

      def click_save_button
        @view.save_button.click
      end

      def small_columns_size
        left = @view.left_small_columns.size
        right = @view.right_small_columns.size
        return left + right
      end

      def choose_soft_credit_summary
        @view.soft_credit_summary_checkbox.set(true)
      end

      def soft_credit_summary_tile_exists?
        return @view.soft_credit_summary_tile.when_present.exists?
      end

      def recent_journal_entry_click
        @view.recent_journal_entry.when_present.click
      end

      def wait_on_tile_load
        sleep 5
        if (@view.content.text.include? 'Retrieving Content')
          step "I click Home on the main menu"
          step "I click on Go to Home on the home menu"
          step "I am on the home page"
        end
        # @view.content.table(:id,'givingSummaryTable').wait_until_present
      end

      def on_trans_journal_page?
        return @view.journal_gift_header.present?
      end

      def last_gift_click
        @view.last_gift.when_present.click
      end

      def five_year_summary_recent_click
        @view.five_year_summary_recent.when_present.click
      end

      def viewing_current_year?
        return @view.journal_start_date.when_present.text == ('From 1/1/' + Date.today.strftime("%Y"))
      end

      def journal_columns_click
        @view.journal_columns.when_present.click
      end

    end
  end
end

