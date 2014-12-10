module Cukesetaptesting
  module DIY
    class Onlineforms < BaseController
      @model = OnlineformsModel
      @view = OnlineformsView

      def on_online_forms_page?
        return @view.online_forms_title.when_present.text.include? 'Online Forms'
      end
    end
  end
end

