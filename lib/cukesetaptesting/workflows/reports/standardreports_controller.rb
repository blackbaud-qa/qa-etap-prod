module Cukesetaptesting
  module Reports
    class Standardreports < BaseController
      @model = StandardreportsModel
      @view = StandardreportsView

      def on_standard_reports_page?
        return @view.standard_reports_title.when_present.text.include? 'eTapestry Standard Reports'
      end

      def on_benchmark_reports_page?
        return @view.standard_reports_title.when_present.text.include? 'eTapestry Benchmark Reports'
      end

      def on_standard_exports_page?
        return @view.standard_reports_title.when_present.text.include? 'eTapestry Standard Exports'
      end

      def no_home_page_photo?
        @view.no_home_page_photo_image.exists?
      end

      def generate_account_summary_report
        @view.generate_account_summary_report_click.when_present.click
        @view.show_relationships_checkbox.when_present.click
        @view.show_user_defined_fields_checkbox.when_present.click
        @view.show_recognition_info_checkbox.when_present.click
        @view.limit_journal_checkbox.when_present.click
        @view.account_summary_submit_button.when_present.click
      end

      def account_summary_report_results? name
        (@view.account_summary_report_name).when_present.text.include? name
      end

      def picture_tile_link link
       @view.picture_tile_link_click(link).when_present.click
      end

      def set_account_image_without_ampersand
       @view.set_account_image_browse

      end

      def set_account_image_with_ampersand
        @view.set_account_image_browse

      end

    end
  end
end

