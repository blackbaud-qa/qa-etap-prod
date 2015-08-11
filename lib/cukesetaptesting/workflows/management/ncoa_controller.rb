module Cukesetaptesting
  module Management
    class Ncoa < BaseController
      @model = NcoaModel
      @view = NcoaView
      
      def management_ncoa_click
        @view.management_ncoa.when_present.click
      end

      def on_ncoa_settings_page?
        return @view.ncoa_page.present?
      end
    end
  end
end

