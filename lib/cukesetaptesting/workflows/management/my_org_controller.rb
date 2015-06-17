module Cukesetaptesting
  module Management
    class MyOrg < BaseController
      @model = MyOrgModel
      @view = MyOrgView

    def save_and_personas_click
      @view.save_and_personas.when_present.click
    end

    def federal_id
      return @view.federal_id.value
    end

    end
  end
end

