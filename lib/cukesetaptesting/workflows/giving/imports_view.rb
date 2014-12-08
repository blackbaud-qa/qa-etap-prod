module Cukesetaptesting
  module Giving
    class ImportsView < BaseView
      keyword(:imports_page_title)  { content.div(:class, 'contentBodyDiv').div(:class, 'pageTitle') }

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
