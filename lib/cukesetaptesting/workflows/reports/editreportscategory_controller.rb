module Cukesetaptesting
  module Reports
    class Editreportscategory < BaseController
      @model = EditreportscategoryModel
      @view = EditreportscategoryView

      def on_system_page?
        return @view.report_category_title.when_present.text.include? 'Edit Report Category : System'
      end

      #run_existing_report
      def run_report
        @view.run_report_link.when_present.click
      end

      def select_category_base
        @view.category_base.when_present.click
      end

      def select_query_all_constituents
        @view.query_all_constituents.when_present.click
      end

      #export
      def select_download_format_options
        @view.report_format.when_present.click
      end

      def select_download_format format
        @view.report_format.when_present.select format
      end

      def see_test_report?(title)
        @view.page_title.when_present.text.include?(title)
      end

      #verify download methods
      def downloaded_as_pdf?(format)
        @view.downloaded_as_pdf.wait_until_present
        @view.downloaded_as_pdf.when_present.text.include?(format)
      end

      def in_dropbox_as?(format)
        @view.dropbox_list.when_present.text.include?(format)
      end

      def report_generating?
        @view.generating_report.when_present.text.include? 'Test Report'
      end

      def report_sent_as_email?
        @view.report_sent.when_present.text.include? 'inbox'
      end

      #report_load_copy_move_delete
      def select_task_new_category
        @view.task_new_category.when_present.click
      end

      def select_save_category
        @view.task_save_category.when_present.click
      end

      def on_report_categories_page?
        return @view.report_categories_page_title.when_present.text.include? 'Report Categories'
      end

      def on_report_categories_title?(page_title)
        return @view.report_categories_page_title.when_present.text.include?(page_title)
      end

      def report_categories_exist?(links)
        matches = 0
        expected_links_count = links.count

        puts expected_links_count

        fh1 = @view.category_1.when_present.text
        fh2 = @view.category_2.when_present.text
        fh3 =  @view.category_3.when_present.text


        links.each do |link|
          case link['Links']
            when fh1,fh2,fh3
              matches+=1
          end
        end

        puts matches

        if matches == expected_links_count
          return true
        end

        return false
      end

      def copy_report(report_to_copy)
        copy_button = @view.get_copy_button_for_report(report_to_copy)
        copy_button.click
      end

      def select_default_options
        @view.default_copy_options_title.when_present.text.include? 'Copy'
      end

      def click_copy_button
        @view.category_copy_button.when_present.click
      end

      def on_system_category_page?
        return @view.system_category_page_title.when_present.text.include? 'Edit Report Category : System'
      end

      def move_to_category(category)
        @view.new_category_select.when_present.select(category)
      end

      def click_move_button
        @view.category_move_button.when_present.click
      end

      def move_report(report_to_move)
        move_button = @view.get_move_button_for_report(report_to_move)
        move_button.click
      end

      def click_test_category_link
        @view.test_category_link.when_present.click
      end

      def on_test_categories_page?
        return @view.test_category_page_title.when_present.text.include? 'Edit Report Category : Test Category'
      end

      def delete_report(report_to_delete)
        delete_button = @view.get_delete_button_for_report(report_to_delete)
        delete_button.click
      end

      def delete_report_category report_name
        delete_button = @view.content.ul(:id,'list_categories').h4(:text, report_name).when_present.parent.div(:class, "actions").a(:class, "delete")
        delete_button.click
      end

      def confirm_delete(delete_item)
        @view.delete_confirm_popup.when_present.text.include?(delete_item)
        @view.content.button(:value, "Yes").when_present.click
      end

      def report_deleted(report_removed)
        return !@view.content.a(:text,report_removed).exists?
      end

      def category_name_exists?(name)
        return @view.content.ul(:id,'list_categories').a(:text,name).exists?
      end

      def report_click report
        @view.content.a(:text,report).when_present.click
      end

      def edit_report_save_click
        @view.edit_report_save.when_present.click
      end

      def report_exists? name
        @view.reports_grid.wait_until_present
        return @view.reports_grid.text.include? name
      end

      def sort_name_expand_click
        @view.sort_name_expand.when_present.click
      end

      def sort_order_z_click
        @view.sort_order_z.when_present.click
      end

      def run_specific_report report
        @view.content.a(:text,report).wait_until_present
        @view.content.a(:text,report).parent.parent.a(:class,'run').when_present.click
      end

      def group_report_dropdown_click
        @view.group_report_dropdown.when_present.click
      end

      def group_report_select group
        @view.content.div(:id,'grouped_comboAllList').div(:text=>group).when_present.click
      end

      def delete_state_field_click
        @view.delete_state_field.when_present.click
      end

      def state_field_present?
        @view.state_field.wait_until_present
        @view.state_field.text.include? 'State/Province'
      end

    end
  end
end

