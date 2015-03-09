module Cukesetaptesting
  module Reports
    class Createreport < BaseController
      @model = CreatereportModel
      @view = CreatereportView

      def report_title_exists?(name)
        return @view.report_title.when_present.text.include? name
      end

      def report_fields_exist?(expected_fields)
        matches = 0
        expected_fields_count = expected_fields.count

        # MJD - 3/9/2015 - Moving these locators out of the
        #  Case statement below, and into this temp assignment,
        #  sped up this function noticeably.
        fh1 = @view.field_header_1.when_present.text
        fh2 = @view.field_header_2.when_present.text
        fh3 = @view.field_header_3.when_present.text
        fh4 = @view.field_header_4.when_present.text
        fh5 = @view.field_header_5.when_present.text
        fh6 = @view.field_header_6.when_present.text
        fh7 = @view.field_header_7.when_present.text
        fh8 = @view.field_header_8.when_present.text
        fh9 = @view.field_header_9.when_present.text

        expected_fields.each do |expected_field|
          case expected_field['Fields']
            when fh1,fh2,fh3,fh4,fh5,fh6,fh7,fh8,fh9
              matches+=1
          end

        end

        if matches == expected_fields_count
          return true
        end
      end

      def new_category_link_click
        @view.new_category_link.when_present.click
      end

      def show_less_detail_link_click
        @view.show_less_detail_link.when_present.click
      end

      def save_category_order_link_click
        @view.save_category_order_link.when_present.click
      end

      def etap_standard_reports_link_click
        @view.etap_standard_reports_link.when_present.click
      end

      def etap_benchmark_reports_link_click
        @view.etap_benchmark_reports_link.when_present.click
      end

      def system_link_click
        @view.system_link.when_present.click
      end

      def new_report_link_click
        @view.new_report_link.when_present.click
      end

      def delete_report_category_link_click
        @view.delete_report_category_link.when_present.click
      end

      def select_query_category query_category
        @view.query_category_dropdown.when_present.select query_category
      end

      def select_query query_name
        @view.query_dropdown.when_present.select query_name
      end

      def select_report_format format
        @view.report_format.when_present.select format
      end

      def report_exists? report_name
        @view.content.a(:text, report_name).exists?
      end

      def delete_report report_to_delete
        delete_button = @view.get_delete_button_for_report report_to_delete
        delete_button.click
        @view.content.button(:value, "Yes").when_present.click
      end

      def name_field_link_click
        @view.name_field_link.when_present.click
      end
      def address_field_link_click
        @view.address_field_link.when_present.click
      end
      def city_field_link_click
        @view.city_field_link.when_present.click
      end
      def state_field_link_click
        @view.state_field_link.when_present.click
      end
      def postal_code_field_link_click
        @view.postal_code_field_link.when_present.click
      end
      def sort_name_field_link_click
        @view.sort_name_field_link.when_present.click
      end
      def date_field_link_click
        @view.date_field_link.when_present.click
      end
      def fund_field_link_click
        @view.fund_field_link.when_present.click
      end
      def received_field_link_click
        @view.received_field_link.when_present.click
      end

      def save_button_click
        @view.save_button.click
      end

      def save_and_run_button_click
        begin
          @view.save_and_run_button.when_present.click
        rescue
          browser.alert.ok
        end
      end

      def submit_button_click
        @view.submit_button.click
      end

    end
  end
end

