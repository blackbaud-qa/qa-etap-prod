module Cukesetaptesting
  module Admin
    class UsersView < BaseView
      keyword(:users_title)  { content.div(:class, 'pageTitle') }

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
