module Cukesetaptesting
  module Admin
    class GoalsView < BaseView
      keyword(:goals_title)  { goals.h1(:class,'pageTitle') }

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

      def goals
        content.div(:id,'datedGoals')
      end
    end
  end
end
