module Cukesetaptesting
  module Account
    class Profile < BaseController
      @model = ProfileModel
      @view = ProfileView

    def constit_name_exists?(name)
      return @view.constit_summary.when_present.text.include? name
    end

    end
  end
end

