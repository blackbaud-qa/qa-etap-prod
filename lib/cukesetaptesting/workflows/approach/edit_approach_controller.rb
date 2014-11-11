module ETapestry
  module Approach
    class EditApproach < BaseController
      @model = EditApproachModel
      @view = EditApproachView

      def populate_data
        populate_values
        submit
      end

    end
  end
end

