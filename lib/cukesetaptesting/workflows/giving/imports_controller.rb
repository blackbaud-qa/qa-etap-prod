module Cukesetaptesting
  module Giving
    class Imports < BaseController
      @model = ImportsModel
      @view = ImportsView

      def managment_import_click
        @view.managment_import.when_present.click
      end

      def import_catgegory_click cat
        @view.content.a(:text,cat).when_present.click
      end

      def new_import_click
        @view.new_import.when_present.click
      end

      def new_import_choose_file_set file
        @view.new_import_choose_file.when_present.set(file)
      end

      def on_imports_page?
        @view.imports_page_title.when_present.text.include? 'Import Categories'
      end

      def on_prosepect_research_page?
        @view.imports_page_title.when_present.text.include? 'Prospect Research'
      end

      def on_planned_giving_page?
        @view.imports_page_title.when_present.text.include? 'Planned Giving Calculators'
      end

      def on_cultivation_tools_page?
        @view.imports_page_title.when_present.text.include? 'Cultivation Tools'
      end

      def type_to_import_select data
        @view.type_to_import.when_present.select data
      end

      def import_country_select country
        @view.import_country.when_present.select country
      end

      def import_name_format_select option
        if(@view.import_name_select.present?)
          @view.import_name_select.select option
        end
      end


      def import_next_click
        @view.click_and_confirm_alert(@view.import_next)
      end

      def import_another_field_click
        @view.import_another_field.when_present.click
      end

      def import_address_lines_click field
        @view.import_fields_pop_up.wait_until_present
        @view.import_fields_pop_up.a(:text,field).when_present.click
      end

      def mapping_icon_click field
        @view.mapping_table_other_fields_row(field).text_field(:class,'compactInput').parent.img.when_present.click
      end

      def mapping_icon_names_click field
        @view.mapping_table_individual_name_format_row(field).text_field(:class,'compactInput').parent.img.when_present.click
      end

      def import_mapping_field_click field
        @view.import_mapping_pop_up.wait_until_present
        @view.import_mapping_pop_up.a(:text,field).when_present.click
      end

      def import_mapping_fields_click field1, field2
        @view.import_mapping_pop_up.wait_until_present
        @view.import_mapping_pop_up.a(:text,field1).when_present.click

        @view.import_mapping_pop_up.wait_until_present
        @view.import_mapping_pop_up.a(:text,'Space').when_present.click

        @view.import_mapping_pop_up.wait_until_present
        @view.import_mapping_pop_up.a(:text,field2).when_present.click
      end

      def import_mapping_x_click
        @view.import_mapping_pop_up.wait_until_present
        @view.import_mapping_pop_up_corner_x.when_present.click
      end

      def individual_fields_checkbox_set field
        @view.mapping_table_individual_name_format_row(field).checkbox.when_present.set

      end

      def family_fields_checkbox_set field
        @view.mapping_table_family_name_format_row(field).checkbox.when_present.set

      end

      def business_fields_checkbox_set field
        @view.mapping_table_business_name_format_row(field).checkbox.when_present.set

      end

      def other_fields_checkbox_set field
        @view.mapping_table_other_fields_row(field).checkbox.when_present.set
      end

      def possible_duplicates_exist? name
        return @view.content.text.include? name
      end

      def on_import_summary_page?
       return @view.import_summary_title.present?
      end

      def import_summary_contains? text
        return @view.import_summary_title.parent.parent.text.include? text
      end

      def error_message_contains? msg
        return @view.content.div(:class,'informationError').h3.when_present.text.include? msg
      end

      def import_template_delete_click name
        @view.content.a(:text,name).parent.parent.a(:text,'Delete').when_present.click
      end

      def confirm_delete_click
        @view.confirm_delete.when_present.click
      end

      def import_template_exists? name
        return @view.content.text.include? name
      end

      def import_step_1_is_loaded?
        @view.main_import_div.wait_until_present
        @view.page_1_shaded_icon.wait_until_present
      end

      def import_step_2_is_loaded?
        @view.main_import_div.wait_until_present
        @view.page_2_shaded_icon.wait_until_present
      end

      def import_step_3_is_loaded?
        @view.main_import_div.wait_until_present
        @view.page_3_shaded_icon.wait_until_present
      end

      def import_step_4_is_loaded?
        @view.main_import_div.wait_until_present
        @view.page_4_shaded_icon.wait_until_present
      end

      def import_step_5_is_loaded?
        @view.main_import_div.wait_until_present
        @view.page_5_shaded_icon.wait_until_present
      end
    end
  end
end

