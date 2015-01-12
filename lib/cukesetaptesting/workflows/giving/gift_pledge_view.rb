module Cukesetaptesting
  module Giving
    class GiftPledgeView < BaseView
      keyword(:date_field) {content.div(:class,"calendarPopup").text_field(:id, "date")}
      # keyword(:date_field) {content.text_field(:id, "date")}
      keyword(:calendar_button) {content.div(:class,"calendarPopup").img(:src, "/prod/images/newCalendarIcon.png")}
      keyword(:transactions) {add_entry.option(:text, 'Gift/Pledge')}

      # field for money received
      keyword(:received_field) {content.table(:class,"pageTextNormal").text_field(:id, "recived")}
      #combo box for type of fund
      keyword(:fund_type) {content.table(:class,"pageTextNormal").text_field(:id, "intentRef_comboText")}
      #combo box for setting the campaign type
      keyword(:campaign_type) {content.table(:class,"pageTextNormal").text_field(:id, "campaignRef_comboText")}
      keyword(:approach_type) {content.table(:class,"pageTextNormal").text_field(:id, "approachRef_comboText")}

      keyword(:payment_method) {content.div(:id, 'giftTypesControls').select(:name, 'paymentType')}
      keyword(:select_payment) {payment_method.option(:value, 'creditCardFields')}
      keyword(:check_field) {payment_method.option(:value, 'checkFields')}

      keyword(:check_date) {content.div(:id, "checkFields").text_field(:name, "checkDate")}
      keyword(:check_number) {content.div(:id, "checkFields").text_field(:name, "checkNumber")}

      keyword(:card_number) {content.div(:id, 'creditCardFields').text_field(:name, "creditCardNumber")}

      keyword(:select_month) {content.div(:id, 'creditCardFields').select(:name, 'creditCardExpirationMonth')}
      keyword(:expiration_month) {select_month.option(:value, "12")}

      keyword(:select_year) {content.div(:id, 'creditCardFields').select(:name, 'creditCardExpirationYear')}
      keyword(:expiration_year) {select_year.option(:value, "2034")}

      keyword(:save) {content.div(:id, 'etap.fieldset.area.9').input(:name, 'saveAnd')}

      keyword(:yes) {content.div(:class, 'popFooter').input(:id, 'id')} #id for div changes each time so used the class

      keyword(:tribute_bar) {content.div(:id, 'tributeFieldsTitleBar')}
      keyword(:tribute_info) {content.div(:id, 'tributeFields').img(:src, 'images/magnifying-glass.png')}

      # keyword(:tribute_search) {content.text_field(:id, 'searchString')}
      # keyword(:tribute_search) {content.div(:id, 'etap.fieldset.area.1').input(:id, "searchString")}
      # keyword(:tribute_search) {content.div(:id, 'etap.fieldset.area.1').text_field(:id, "searchString")}
      keyword(:tribute_search) {content.div(:class, 'popupWindow').text_field(:id, "searchString")}



      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
