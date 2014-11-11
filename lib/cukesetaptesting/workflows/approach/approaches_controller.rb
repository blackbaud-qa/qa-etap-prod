module ETapestry
  module Approach
    class Approaches < BaseController
      @model = ApproachesModel
      @view = ApproachesView

      def home
        @view.home
      end

    end
  end
end

