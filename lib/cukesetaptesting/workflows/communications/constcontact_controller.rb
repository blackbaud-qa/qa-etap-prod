module Cukesetaptesting
  module Communications
    class Constcontact < BaseController
      @model = ConstcontactModel
      @view = ConstcontactView

      def on_const_cont_page?
        return @view.const_cont_title.when_present.text.include? 'eTapestry & Constant Contact'
      end

      def communications_link_click(value)
        if @view.communications_link(value).present?
        @view.communications_link(value).when_present.click
        else
          @view.cc_manage_preferences.when_present.click
        end
      end

      def cc_save_click
        @view.cc_save.when_present.click
      end

      def page_title_header?(value)
        @view.page_title.when_present.text.include? value
      end

      def warning_message_header?(value)
        @view.warning_message.when_present.text.include? value
      end

    end
  end
end

