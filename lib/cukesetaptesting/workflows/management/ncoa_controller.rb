module Cukesetaptesting
  module Management
    class Ncoa < BaseController
      @model = NcoaModel
      @view = NcoaView
      
      def on_ncoa_settings_page?
        return @view.ncoa_page.present?
      end

      def on_social_finder_page?
        return @view.social_page.present?
      end

      def category_value_selected? value
        @view.category_value.wait_until_present
        return @view.category_value.selected? value
      end

      def query_value_selected? value
        @view.query_value.wait_until_present
        return @view.query_value.selected? value
      end

      def get_date_value
        @view.ncoa_settings_date.wait_until_present
        temp = Date.parse @view.ncoa_settings_date.value
        return temp.strftime('%x')
      end

      def primary_personas_set?
        sleep 1
        @view.ncoa_settings_primary_personas.wait_until_present
        # return @view.ncoa_settings_primary_personas.set?
        rgb_color = @view.ncoa_settings_primary_personas.style 'background-color'
        rgb_color = rgb_color.sub("rgba(","")
        rgb_color = rgb_color.sub(")","")
        hex_color = rgb_color.split(",")
        checkcolor = "#%02X%02X%02X%02X" % hex_color


         return checkcolor.downcase.include? '#1C84C6'.downcase

      end


      def radio_option_set? name_label
        sleep 1

        radio_label = @view.content.label(:class=>'radio bb-check-wrapper',:text=>name_label).span

        rgb_color = radio_label.style 'background-color'
        rgb_color = rgb_color.sub("rgba(","")
        rgb_color = rgb_color.sub(")","")
        hex_color = rgb_color.split(",")
        checkcolor = "#%02X%02X%02X%02X" % hex_color


        return checkcolor.downcase.include? '#1C84C6'.downcase

      end

      def reformat_all_addresses_set?
        @view.ncoa_settings_standard_all_addresses.wait_until_present
        return @view.ncoa_settings_standard_all_addresses.set?
      end

      def get_email_value
        @view.ncoa_settings_email.wait_until_present
        return @view.ncoa_settings_email.value
      end

      def category_value_select value
        @view.category_value.when_present.select value
      end

      def query_value_select value
        @view.query_value.when_present.select value
      end

      def edit_query_click
        @view.edit_query.when_present.click
      end

      def create_query_click
        @view.create_query.when_present.click
      end

      def date_calendar_click
        @view.date_calendar.when_present.click
      end

      def date_calendar_displayed?
        return @view.date_calendar_picker.present?
      end

      def date_calendar_today_click
        @view.date_calendar_today.when_present.click
      end

      def schedule_click
        # browser.after_hooks.without do |browser|
        @view.browser.without_checkers do
          @view.schedule.when_present.click
        end
      end

      def category_value_clear
        @view.category_value.when_present.clear
      end

      def query_value_clear
        @view.query_value.when_present.clear
      end

      def usps_standards_page_click
        @view.usps_standards_page.when_present.click
      end

      def on_usps_standards_page?
        return @view.browser.a(:href,'https://www.usps.com').present?
      end

    end
  end
end

