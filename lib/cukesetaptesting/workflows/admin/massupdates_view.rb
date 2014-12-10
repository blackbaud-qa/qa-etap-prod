module Cukesetaptesting
  module Admin
    class MassupdatesView < BaseView
      keyword(:mass_updates_title)  {content.div(:id, 'massUpdatesListPage').h1(:class,'pageTitle')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
