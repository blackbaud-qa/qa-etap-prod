module ETapestry
  module Approach
    EditApproachModel = Watirmark::Model.factory do
      keywords EditApproachView.keywords
      defaults do
        name          {"approach_#{uuid}"}
      end
    end
  end
end