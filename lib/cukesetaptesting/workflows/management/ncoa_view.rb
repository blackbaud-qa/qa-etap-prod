module Cukesetaptesting
  module Management
    class NcoaView < BaseView
      keyword(:management_ncoa)  {content.div(:id,'managementPageContent').div(:id,'adminContent').ul(:id,'homeQuickLinks').a(:href,'ncoa.do')}
      keyword(:ncoa_page) {content.div(:id,'ncoaContainer')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
