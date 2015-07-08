module Cukesetaptesting
  module Queries
    class Createquerycategory < BaseController
      @model = CreatequerycategoryModel
      @view = CreatequerycategoryView

      def on_create_query_page?
        return @view.create_comms_category_title.when_present.text.include? 'Create Query Category'
      end

      def new_query_category_click
        @view.new_query_category.when_present.click
      end

      def save_new_query_category_click
        @view.save_new_query_category.when_present.click
      end

      def delete_query_category_click(category)
        @view.delete_query_category(category).when_present.click
      end

      def delete_query_category_yes_click
        @view.delete_query_category_yes.when_present.click
      end

      def delete_query_click(name)
        @view.delete_query(name).when_present.click
      end

      def new_query_task_click(value)
        @view.new_query_task(value).when_present.click
      end

      def query_name_set(name)
        @view.query_name(name)
      end

      def select_data_return_type(value)
        @view.select_data_return_type_value.when_present.select(value)
      end

      def select_query_criteria_category(category)
        @view.select_query_criteria_category_value.when_present.select(category)
      end

      def click_query_criteria(item)
        @view.query_criteria(item).when_present.click
        sleep 2
      end

      def select_journal_entry_date(value)
        @view.select_journal_entry_date_value.when_present.select(value)
      end

      def select_itr_first_comparison(item)
        @view.select_itr_first_comparison_value.when_present.select(item)
      end

      def edit_query_click
        @view.edit_query.when_present.click
      end

      def custom_account_query_add_click
        @view.custom_account_query_add.when_present.click
      end

      def custom_account_query_add_name_click(name)
        @view.custom_account_query_add_name(name).when_present.click
      end

      def find_account_popup_close_click
        @view.find_account_popup_close.when_present.click
      end

      def find_account_popup_find_click
        @view.find_account_popup_find.when_present.click
      end

      def combine_queries_subtract_click
        @view.combine_queries_subtract.when_present.click
      end

      def compound_category_one_select(category)
        @view.compound_category_one_select_value.when_present.select(category)
      end

      def compound_query_one_select(value)
        @view.compound_query_one_select_value.when_present.select(value)
      end

      def compound_category_two_select(category)
        @view.compound_category_two_select_value.when_present.select(category)
      end

      def compound_query_two_select(value)
        @view.compound_query_two_select_value.when_present.select(value)
      end

      def combine_queries_add_click
        @view.combine_queries_add.when_present.click
      end

      def cannot_delete_query_ok_click
        @view.cannot_delete_query_ok.when_present.click
      end

      def tasks_menu_link_click (value)
        @view.tasks_menu_link(value).when_present.click
      end

      def try_to_click_on_query_category(category)
        @view.click_missing_query_category(category).present?
      end

      def preview_query_click(name)
        @view.preview_query(name).when_present.click
      end

      def query_results_my_org
        @view.query_results_my_org_icon.present?
      end

      def query_preview_results(name)
        @view.query_preview_results_value(name).present?
      end

      def select_journal_entry_type_checkbox(checkbox_text)
        @view.select_journal_entry_type_checkbox checkbox_text
      end

      def is_warning_present?
        @view.duplicate_query_category_warning.present?
      end

      def is_duplicate_query_category_message_present?
        @view.duplicate_query_category_warning.div(:value => 'The category name you have chosen, Donation Queries is already in use. Please choose another.').present?
      end

      def duplicate_query_category_back_button_click
        @view.duplicate_query_category_back_button_click
      end
    end
  end
end

