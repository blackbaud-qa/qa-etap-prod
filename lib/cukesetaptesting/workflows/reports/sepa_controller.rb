module Cukesetaptesting
  module Reports
    class Sepa < BaseController
      @model = SepaModel
      @view = SepaView

      def next_click
        @view.next.when_present.click
      end

      def pop_up_error_includes? error
        return @view.error_popup.text.include? error
      end

      def pop_up_ok_click
        @view.pop_up_ok.when_present.click
      end

      def retries_only_select
        @view.retries_only.when_present.set
      end

      def standard_set
        @view.standard.when_present.set
      end

      def live_set
        @view.live.when_present.set
      end

      def reg_sched_dd_select
        @view.reg_sched_dd_retries.when_present.set
      end

      def custom_select
        @view.custom.when_present.set
      end

      def custom_category_select category
        @view.custom_category.when_present.select category
      end

      def query_select query
        @view.query_cat.when_present.select query
      end

      def this_month_gift_set
        @view.this_month_gift.when_present.set
      end

      def first_one_off_set
        @view.first_one_off.when_present.set
      end

      def export_data_contains? name
        return @view.export_table.when_present.text.include? name
      end
    end
  end
end

