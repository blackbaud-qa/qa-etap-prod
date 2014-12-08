module Cukesetaptesting
  module Giving
    class GivingreportsView < BaseView
      keyword(:giving_reports_title)  { content.div(:id, 'reportLauncher').div(:class, 'pageTitle') }

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
