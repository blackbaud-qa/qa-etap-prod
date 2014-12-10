module Cukesetaptesting
  module Reports
    class Reportlauncher < BaseController
      @model = ReportlauncherModel
      @view = ReportlauncherView

      def on_top_donor_page?
        return @view.report_launcher_title.when_present.text.include? 'Launch Top Donor Report'
      end

      def on_journal_page?
        return @view.report_launcher_title.when_present.text.include? 'Launch Journal Entry List'
      end

      def on_recency_page?
        return @view.report_launcher_title.when_present.text.include? 'Launch Recency Report'
      end

      def on_shared_links_page?
        return @view.report_launcher_title.when_present.text.include? 'Launch Shared Links Report'
      end

      def on_aging_pledge_page?
        return @view.report_launcher_title.when_present.text.include? 'Launch Aging Pledge Summary'
      end

      def on_user_activity_page?
        return @view.report_launcher_title.when_present.text.include? 'Launch User Activity'
      end
    end
  end
end

