module Cukesetaptesting
  module Admin
    class Goals < BaseController
      @model = GoalsModel
      @view = GoalsView

      def on_goals_page?
        return @view.goals_title.when_present.text.include? 'Goals'
      end
    end
  end
end

