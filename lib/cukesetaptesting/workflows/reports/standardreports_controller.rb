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
    end
  end
end

