module Cukesetaptesting
  module Communications
    class Constcontact < BaseController
      @model = ConstcontactModel
      @view = ConstcontactView

      def on_const_cont_page?
        return @view.const_cont_title.when_present.text.include? 'eTapestry & Constant Contact'
      end
    end
  end
end

