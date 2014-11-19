module Cukesetaptesting
  module Account
    class Profile < BaseController
      @model = ProfileModel
      @view = ProfileView

    def constit_name_exists?(name)
      return @view.constit_summary.when_present.text.include? name
    end

    def on_home_page?
      return @view.home_page_class.present?
    end

    def on_personas_page?
      return @view.persona_page.present?
    end


    end
  end
end

