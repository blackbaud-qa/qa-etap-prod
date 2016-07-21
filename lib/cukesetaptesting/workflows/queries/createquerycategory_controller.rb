module Cukesetaptesting
  module Queries
    class Createquerycategory < BaseController
      @model = CreatequerycategoryModel
      @view = CreatequerycategoryView

      def set_find_account_popup_search(val)
        with_modal_dialog do
        # @view.browser.window(:title => 'Select Account Dialog').use do
          @view.find_account_popup_search.when_present.set val
        end
      end

      def on_create_query_page?
        return @view.create_comms_category_title.when_present.text.include? 'Create Query Category'
      end

      def on_edit_query_page?
        return @view.edit_query_title.when_present.text.include? 'Edit Query'
      end

      def string_exists_on_page?(query_string)
        @view.string_exists_on_page? query_string
      end

      def new_query_category_click
        @view.new_query_category.when_present.click
      end

      def save_new_query_category_click
        @view.save_new_query_category.when_present.click
      end

      def delete_query_category_click(category)
        # @view.click_and_confirm_alert(@view.delete_query_category(category).when_present.click)
        @view.delete_query_category(category).when_present.click
      end

      def delete_query_category_yes_click
        @view.delete_query_category_yes.when_present.click
       # @view.get_query_delete_right

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
        with_modal_dialog do
        # @view.browser.window(:title => 'Select Account Dialog').use do
          @view.custom_account_query_add_name(name).when_present.click
        end
      end

      def find_account_popup_close_click
        @view.browser.windows.last.close
        # with_modal_dialog do
        # # @view.browser.window(:title => 'Select Account Dialog').use do
        #   @view.find_account_popup_close.when_present.click
        # end
      end

      def find_account_popup_find_click
        with_modal_dialog do
        # @view.browser.window(:title => 'Select Account Dialog').use do
          @view.find_account_popup_find.when_present.click
        end
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
        return @view.content.ul(:id,'list_categories').text.include? category
        # @view.click_missing_query_category(category).present?
      end

      def preview_query_click(name)
        @view.preview_query(name).when_present.click
      end

      def query_results_my_org
        @view.query_results_my_org_icon.present?
      end

      def query_preview_results(name)
        sleep 5
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

      def criteria_account_name(ids, values)
        @view.account_name_selector(ids).when_present.click
        browser.windows.last.use do
          sleep(2);
          browser.send_keys values
          browser.send_keys :enter
        end
      end

      def criteria_account_whoever_runs(ids)
        @view.set_account_whoever_runs(ids).when_present.set
      end

      def criteria_text_value_none(prefix)
        @view.set_criteria_no_value(prefix).when_present.set
      end

      def criteria_text_value_any(prefix)
        @view.set_criteria_any_value(prefix).when_present.set
      end

      def criteria_text_accounts_value(prefix, ids, values)
        value_array = values.split(',')

        value_array.each_with_index do |value, index|
          value = value.strip
          if index == 0
            input = @view.set_criteria_text_value_account_first(prefix, ids)
            input.when_present.set value
          else
            input = @view.set_criteria_text_value(prefix, index+1)
            input.when_present.set value
          end

          if index != value_array.size - 1
            input.parent.a.click
          end
        end
      end

      def criteria_text_value(prefix, ids, values)
        value_array = values.split(',')

        value_array.each_with_index do |value, index|
          value = value.strip
          if index == 0
            input = @view.set_criteria_text_value_first(prefix, ids)
            input.when_present.set value
          else
            input = @view.set_criteria_text_value(prefix, index+1)
            input.when_present.set value
          end

          if index != value_array.size - 1
            input.parent.a.click
          end
        end
      end

      def criteria_num_range(prefix, ids, values)
        values_array = values.split(',')
        ids_array = ids.split(',')
        for i in 0..(values_array.length/2 - 1)
          @view.dropdown_selector( prefix == '' ? ids_array[2*i].strip : prefix+'.'+ids_array[2*i].strip ).when_present.set values_array[2*i].strip
          @view.input_selector( prefix == '' ? ids_array[2*i+1].strip : prefix+'.'+ids_array[2*i+1].strip ).when_present.send_keys values_array[2*i+1].strip
        end
      end

      def criteria_arrears(prefix, ids, values)
        values_array = values.split(',')
        ids_array = ids.split(',')
        @view.dropdown_select_by_name(prefix == '' ? ids_array[0].strip : prefix+'.'+ids_array[0].strip).when_present.set values_array[0].strip
        @view.text_select_by_name(prefix == '' ? ids_array[1].strip : prefix+'.'+ids_array[1].strip).when_present.set values_array[1].strip
        @view.dropdown_select_by_name(prefix == '' ? ids_array[2].strip : prefix+'.'+ids_array[2].strip).when_present.set values_array[2].strip
        if values_array.length > 3
          @view.text_select_by_name(prefix == '' ? ids_array[3].strip : prefix+'.'+ids_array[3].strip).when_present.set values_array[3].strip
        end
      end

      def criteria_date_range(prefix, ids, values)
        values_array = values.split(',')
        ids_array = ids.split(',')
        @view.dropdown_selector(prefix == '' ? ids_array[0].strip : prefix+'.'+ids_array[0].strip).when_present.set values_array[0].strip
        if values_array.length == 3
          @view.input_selector(prefix == '' ? ids_array[1].strip : prefix+'.'+ids_array[1].strip).when_present.set values_array[1].strip
          @view.input_selector(prefix == '' ? ids_array[2].strip : prefix+'.'+ids_array[2].strip).when_present.set values_array[2].strip
        end
      end

      def criteria_checkboxes(prefix, name, values)
        values_array = values.split(',')
        values_array.each do |value|
          @view.checkbox_selector(prefix == '' ? name : prefix+'.'+name, value.strip).when_present.set
        end
      end

      def criteria_multiple_textboxes_by_id(prefix, ids, values)
        values_array = values.split(',')
        ids_array = ids.split(',')
        for i in 0..(ids_array.length - 1)
          @view.input_selector(prefix == '' ? ids_array[i].strip : prefix+'.'+ids_array[i].strip).when_present.set values_array[i].strip
        end
      end

      def criteria_select(prefix, ids, values)
        name = (prefix == '') ? ids : (prefix + '.' + ids)
        @view.dropdown_select_by_name(name).when_present.select_value values
      end

      def criteria_radio(prefix, ids, values)
        name = (prefix == '') ? ids : (prefix + '.' + ids)
        @view.radio_button_by_name(name, values).when_present.set
      end

      def criteria_first_last(prefix, ids, values)
        values_array = values.split(',')
        ids_array = ids.split(',')
        first_value = values_array[0].strip
        @view.dropdown_selector(prefix == '' ? ids_array[0].strip : prefix+'.'+ids_array[0].strip).when_present.set first_value
        if first_value == 'First' or first_value == 'Last'
          @view.dropdown_selector(prefix == '' ? ids_array[1].strip : prefix+'.'+ids_array[1].strip).when_present.set values_array[1].strip
        end
      end

      def criteria_phone_type(phone_type)
        @view.criteria_phone_type_select.when_present.select_value phone_type
      end

      def criteria_phone_number_value(prefix, phone_values)
        value_array = phone_values.split(',')

        value_array.each_with_index do |value, index|
          value = value.strip
          if index == 0
            input = @view.set_criteria_text_phone_number_first(prefix)
            input.when_present.set value
          else
            input = @view.set_criteria_text_value(prefix, index+1)
            input.when_present.set value
          end

          if index != value_array.size - 1
            input.parent.a.click
          end
        end
      end

      def criteria_relationship_atributes(ids, prefix, values)
        values_array = values.split(',')
        ids_array = ids.split(',')
        prefix_with_dot = prefix + '.'
        values_array.each_with_index { |value, index|
          values_array[index] = value.strip
        }
        ids_array.each_with_index { |id, index|
          ids_array[index] = id.strip
        }

        @view.dropdown_selector(ids_array[0]).when_present.select values_array[0]
        if values_array[1] === 'Dynamic'
          @view.click_criteria_dynamic_link(ids_array[1]).click
          if values_array[1]
            @view.dropdown_selector(prefix_with_dot + ids_array[2]).select_value(values_array[2])
          end
        else
          @view.input_selector(prefix_with_dot + ids_array[1]).set values_array[1]
          @view.input_selector(prefix_with_dot + ids_array[2]).set values_array[2]
        end

        if values_array[3] === 'Dynamic'
          @view.click_criteria_dynamic_link(ids_array[3]).click
          if values_array[4]
            @view.dropdown_selector(prefix_with_dot + ids_array[4]).select_value(values_array[4])
          end
        else
          @view.input_selector(prefix_with_dot + ids_array[3]).set values_array[3]
          @view.input_selector(prefix_with_dot + ids_array[4]).set values_array[4]
        end

        if ids_array.size > 5
          if ids_array[5] == 'relationshipMatchingGift'
            @view.check_only_matching_gift_checkbox(ids_array[5], prefix).when_present.set
          else
            @view.checkbox_selector_by_id(ids_array[5]).when_present.set
          end
        end

        if ids_array.size > 6
          if ids_array[6] == 'relationshipMatchingGift'
            @view.check_only_matching_gift_checkbox(ids_array[6], prefix).when_present.set
          else
            @view.checkbox_selector_by_id(ids_array[6]).when_present.set
          end
        end

      end

      def criteria_checkbox_refs(prefix, id, values)
        values_array = values.split(',');
        name = 'testByName(' + prefix + ').' + id
        values_array.each do |value|
          value = value.strip
          if value == 'any'
            @view.set_criteria_any_value(prefix).when_present.set
          elsif value == 'no'
            @view.set_criteria_no_value(prefix).when_present.set
          else
            @view.checkbox_selector_by_text(name, value).when_present.set
          end
        end
      end

      def criteria_cart_items(prefix, id, values)
        values_array = values.split(',');
        name = 'testByName(' + prefix + ').' + id
        values_array.each do |value|
          value = value.strip
          if value == 'any'
            @view.set_criteria_any_value(prefix).when_present.set
          elsif value == 'no'
            @view.set_criteria_no_value(prefix).when_present.set
          else
            @view.checkbox_selector_for_cart(name, value).when_present.set
          end
        end
      end

      def edit_query_save_click

        @view.edit_query_save.when_present.click
      end

      def click_cart_home_button
        @view.cart_home_button.when_present.click
      end

      def field_has_any_value_click
        @view.field_has_any_value.when_present.click
      end

      def donor_review
        @view.donor_review.present?
      end

      def donor_review_description
        @view.donor_review_description.present?
      end

      def set_journal_contact_subject (text)
        @view.set_journal_contact_subject.when_present.send_keys text
      end

      def journal_contact_method_click
        @view.journal_contact_method.when_present.click
      end

      def journal_contact_method_phone_click
        @view.journal_contact_method_phone.when_present.click
      end

      def enter_contact_subject_text (text)
        @view.enter_contact_subject_text.when_present.send_keys text
      end

      def plus_sign_query_criteria
        @view.plus_sign_query_criteria.when_present.click
      end

      def enter_second_contact_subject_text (text)
        @view.enter_second_contact_subject_text.when_present.send_keys text
        sleep 2
      end

      def display_query_results
        @view.display_query_results.present?
      end

      def click_delete_query_preview
        @view.click_delete_query_preview.when_present.click
      end

      def golf_outing_discussion_contact
        @view.golf_outing_discussion_contact.when_present.click
      end

      def gala_contact
        @view.gala_contact.when_present.click
      end

      def mark_query_as_favorite
        @view.favorite_query.when_present.set
      end

      def set_query_type_static
        @view.change_query_type.when_present.click
        @view.query_type_static.when_present.set
        @view.query_type_continue.when_present.click
      end

      def queries_menu_tab
        @view.queries_menu_tab_click.when_present.click
      end

      def favorite_query_link(name)
        @view.favorite_query_link_click(name).when_present.click
      end

      def edit_custom_query_page
        # @view.set_query_name.text.include? name
        @view.set_query_name.when_present.value
      end

      def query_starting_criteria_category(value)
        @view.set_query_starting_criteria_category.when_present.select value
      end

      def query_starting_criteria_query(value)
        @view.set_query_starting_criteria_query.when_present.select value
      end

      def query_preview_on_screen(value)
        @view.query_preview_on_screen_title.text.include? value
      end

      def set_query_type_dynamic
        @view.change_query_type.when_present.click
        @view.query_type_dynamic.when_present.set
        @view.query_type_continue.when_present.click
      end

      def query_journal_entry_type (value)
        @view.journal_entry_type_selection(value).when_present.click
      end

      def query_preview_results_total_count(value)
        sleep 5
        @view.query_preview_results_count.when_present.text.include? value
      end

      def query_preview_search_field_blank
        @view.set_query_preview_search_field.when_present.value
      end

      def query_preview_search_magnifying_glass_click
        @view.query_preview_search_magnifying_glass.when_present.click
      end

      def query_preview_clear_search_click
        @view.query_preview_clear_search_button.when_present.click
      end

      def query_preview_choose_columns_click
        @view.query_preview_choose_columns_button.when_present.click
      end

      def column_picker_account_name_click
        @view.column_picker_account_name.when_present.click
      end

      def column_picker_apply_changes_click
        @view.column_picker_apply_changes_button.when_present.click
      end

      def back_button_click
        browser.back
      end

      def query_preview_journal_entry_date(value)
        @view.query_preview_journal_entry_grid.when_present.text.include? (value)
      end

      def query_preview_search_field_contents
        @view.set_query_preview_search_field.when_present.value
      end

      def query_preview_restore_defaults_click
        @view.query_preview_restore_defaults_button.when_present.click
      end

      def query_preview_drill_into_journal_entry(type, name)
        @view.query_preview_journal_entry_click(type, name).when_present.click
      end

      def query_favorites_tile_left
        @view.query_favorites_tile_left.present?
      end

      def edit_query_favorites_tile (value)
        @view.edit_query_favorites_tile(value).when_present.click
      end

      def edit_query_definition_page (value)
        @view.edit_query_definition_page.text.include? value
      end

      def preview_query_favorites_tile(name)
        @view.preview_query_favorites_tile(name).when_present.click
      end

      def see_all_favorites (value)
        @view.see_all_favorites(value).when_present.click
      end

      def query_favorites_modal_text
        @view.set_query_favorites_modal_text.when_present.value
      end

      def favorites_modal_search? message
        @view.favorites_modal_search.when_present.text.include? message
      end

      def favorites_modal_preview_icon (name)
        @view.favorites_modal_preview_icon(name).when_present.click
      end

      def edit_query_favorites_modal (value)
        @view.edit_query_favorites_modal(value).when_present.click
      end

      def close_favorites_modal
        @view.close_favorites_modal.when_present.click
      end

      def see_all_query_favorites_menu
        @view.see_all_query_favorites_menu.when_present.click
      end

      def query_favorites_modal
        @view.query_favorites_modal.present?
      end

      def select_category_query_favorites_modal (name)
        @view.select_category_query_favorites_modal(name).when_present.click
      end

      def mark_standard_query_as_favorite
        @view.mark_standard_query_as_favorite.when_present.click
      end

      def remove_standard_query_from_favorites
        @view.remove_standard_query_from_favorites.when_present.click
      end

      def query_in_favorites_modal (name)
        @view.query_in_favorites_modal(name).present?
      end

      def query_not_in_favorites_modal (name)
        @view.query_not_in_favorites_modal(name).present?
      end

      def cancel_query_favorites_modal
        @view.cancel_query_favorites_modal.when_present.click
      end

      def favorites_search_no_results
        @view.favorites_search_no_results.present?
      end

      def dismiss_favorites_no_results
        @view.dismiss_favorites_no_results.when_present.click
      end

      def clear_search_query_favorites_modal
        @view.clear_search_query_favorites_modal.when_present.click
      end

      def search_fields_tab_click
        @view.search_fields_tab.when_present.click
      end

      def search_query_criteria_click(item)
        @view.search_query_criteria(item).when_present.click
        sleep 2
      end

      def security_groups_click
        @view.security_groups_link.when_present.click
      end

      def new_security_group_link_click
        @view.new_security_group_link.when_present.click
      end

      def select_account_read_query(value)
        @view.account_read_query_menu.when_present.select value
      end

      def click_on_specific_user_id(value)
        @view.specific_user_id_link(value).when_present.click
      end

      def select_indiana_chapter_security_group
        @view.indiana_chapter_security_group_radio_button.when_present.click
      end

      def select_security_question
        @view.security_question_menu.when_present.select 'In what city were you born?'
      end

      def click_save_button
        @view.save_button.when_present.click
      end

      def click_security_rights_link_sdf_page
        @view.security_rights_link_sdf_page.when_present.click
      end

      def click_add_value_button
        @view.add_value_button.when_present.click
      end

      def click_show_all_fields_link
        @view.show_all_fields_link.when_present.click
      end

      def expand_udf_field(udf)
        @view.udf_field(udf).when_present.click
      end

      def select_code_a_security_group
        @view.code_a_security_group_radio_button.when_present.click
      end


    end
  end
end