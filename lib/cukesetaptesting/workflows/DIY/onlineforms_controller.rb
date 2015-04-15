module Cukesetaptesting
  module DIY
    class Onlineforms < BaseController
      @model = OnlineformsModel
      @view = OnlineformsView

      def on_online_forms_page?
        return @view.online_forms_title.when_present.text.include? 'Online Forms'
      end

      def management_page_diy_click
        return @view.management_page_diy.when_present.click
      end

      def create_a_page_click
        return @view.create_a_page.when_present.click
      end

      def choose_online_giving_click
        return @view.choose_online_giving_page.when_present.click
      end

      def choose_embedded_template_click
        return @view.choose_embedded_template.when_present.click
      end

      def template_next_click
        return @view.template_next.when_present.click
      end

      def fund_click
        return @view.fund_link.when_present.click
      end

      def choose_fund(fund)
        @view.click_on_fund(fund).when_present.click
      end

      def fund_update_click
        return @view.fund_update.when_present.click
      end

      def settings_click_submit
        return @view.settings_submit.when_present.click
      end

      def go_live_click
        return @view.go_live_button.when_present.click
      end
    end
  end
end

