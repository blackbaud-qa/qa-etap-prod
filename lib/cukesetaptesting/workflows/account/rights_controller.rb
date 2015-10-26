module Cukesetaptesting
  module Account
    class Rights < BaseController
      @model = RightsModel
      @view = RightsView

      def rights_group_click rights_group
        (@view.rights_group rights_group).when_present.click
      end
    end
  end
end

