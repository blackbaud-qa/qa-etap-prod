module Cukesetaptesting
  module Admin
    class Getstartedwizard < BaseController
      @model = GetstartedwizardModel
      @view = GetstartedwizardView

      def on_wizard_page?
        @view.wizard_title.when_present.text.include? "Getting Started Wizard"
      end

    end
  end
end

