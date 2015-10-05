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

      def generate_account_summary_report
        @view.generate_account_summary_report_click.when_present.click
        @view.show_relationships_checkbox.when_present.click
        @view.show_user_defined_fields_checkbox.when_present.click
        @view.show_recognition_info_checkbox.when_present.click
        @view.limit_journal_checkbox.when_present.click
        @view.account_summary_submit_button.when_present.click
      end

    end
  end
end

