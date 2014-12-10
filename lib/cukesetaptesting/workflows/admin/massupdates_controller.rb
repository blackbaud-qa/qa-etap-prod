module Cukesetaptesting
  module Admin
    class Massupdates < BaseController
      @model = MassupdatesModel
      @view = MassupdatesView

      def on_mass_updates_page?
        return @view.mass_updates_title.when_present.text.include? 'Mass Updates'
      end
    end
  end
end

