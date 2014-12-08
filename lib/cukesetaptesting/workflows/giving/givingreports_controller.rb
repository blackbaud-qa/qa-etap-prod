module Cukesetaptesting
  module Giving
    class Givingreports < BaseController
      @model = GivingreportsModel
      @view = GivingreportsView

      def on_giving_dynamics_page?
        return @view.giving_reports_title.when_present.text.include? 'Launch Giving Dynamics Report'
      end

      def on_top_donor_page?
        return @view.giving_reports_title.when_present.text.include? 'Launch Top Donor Report'
      end

      def on_pledge_report_page?
        return @view.giving_reports_title.when_present.text.include? 'Launch Pledge Report'
      end

      def on_fund_activity_page?
        return @view.giving_reports_title.when_present.text.include? 'Launch Fund Activity Summary'
      end

      def on_cash_projection_page?
        return @view.giving_reports_title.when_present.text.include? 'Launch Donor Cash Projection Report'
      end

      def on_prospect_research_page?
        return @view.giving_reports_title.when_present.text.include? 'Launch Donor Cash Projection Report'
      end


    end
  end
end

