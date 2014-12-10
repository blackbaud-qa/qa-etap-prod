module Cukesetaptesting
  module Reports
    class ReportlauncherView < BaseView
      keyword(:report_launcher_title)  {launcher.div(:class,'pageTitle')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

      def launcher
        content.div(:id,'reportLauncher')
      end
    end
  end
end
