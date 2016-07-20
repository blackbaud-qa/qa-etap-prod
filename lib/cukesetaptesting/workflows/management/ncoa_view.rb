module Cukesetaptesting
  module Management
    class NcoaView < BaseView
#      keyword(:ncoa_page) {content.div(:id,'ncoaContainer')}
      keyword(:social_page) {content.div(:text,'Social Media Finder')}
      keyword(:ncoa_page) {content.h2(:text,'Scheduling your service')}
      keyword(:category_value) {content.select(:id,'select.query.category.1')}
      keyword(:query_value) {content.select(:id,'select.query.1')}
      keyword(:ncoa_settings_date) {content.text_field(:name,'startDate')}
      # keyword(:ncoa_settings_primary_personas) {content.input(:name,'personaMode')}
      # keyword(:ncoa_settings_primary_personas) {content.label(:class=>'radio bb-check-wrapper',:text=>'Primary personas only').span}
      keyword(:ncoa_settings_standard_all_addresses) {content.radio(:name,'formattingMode')}
      keyword(:ncoa_settings_email) {content.text_field(:name,'notificationEmails')}
      keyword(:edit_query) {content.a(:text,'Edit the Selected Query')}
      keyword(:create_query) {content.a(:text,'Create a New Query')}
      keyword(:date_calendar) {content.i(:class,'fa fa-calendar').parent}
      keyword(:date_calendar_picker) {content.button(:class,'btn btn-default btn-sm pull-left uib-left')}
      keyword(:date_calendar_today) {date_calendar_picker.div(:text,'Today')}
      keyword(:schedule) {content.button(:value,'Schedule')}
      keyword(:usps_standards_page) {content.a(:text,'USPS Address Standardization page')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
