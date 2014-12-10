module Cukesetaptesting
  module Admin
    class SecuritygroupsView < BaseView
      keyword(:security_groups_title)  { content.div(:class, 'pageTitle') }

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
