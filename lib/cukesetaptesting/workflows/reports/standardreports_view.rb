module Cukesetaptesting
  module Reports
    class StandardreportsView < BaseView
      keyword(:standard_reports_title)  { content.div(:class,'pageTitle') }

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
