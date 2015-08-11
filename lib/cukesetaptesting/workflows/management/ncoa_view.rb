module Cukesetaptesting
  module Management
    class NcoaView < BaseView
      keyword(:management_ncoa)  {content.div(:id,'managementPageContent').div(:id,'adminContent').ul(:id,'homeQuickLinks').a(:href,'ncoa.do')}
      keyword(:ncoa_page) {content.div(:id,'ncoaContainer')}
      keyword(:category_value) {content.select(:id,'select.query.category.1')}
      keyword(:query_value) {content.select(:id,'select.query.1')}
      keyword(:ncoa_settings_date) {content.text_field(:id,'startDateField')}
      keyword(:ncoa_settings_primary_personas) {content.radio(:name,'personaMode')}
      keyword(:ncoa_settings_standard_all_addresses) {content.radio(:name,'formattingMode')}
      keyword(:ncoa_settings_email) {content.text_field(:name,'notificationEmails')}
      keyword(:edit_query) {content.a(:text,'Edit the Selected Query')}
      keyword(:create_query) {content.a(:text,'Create a New Query')}
      keyword(:date_calendar) {content.a(:id,'calendarButton1')}
      keyword(:date_calendar_picker) {content.div(:class,'calendar')}
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
