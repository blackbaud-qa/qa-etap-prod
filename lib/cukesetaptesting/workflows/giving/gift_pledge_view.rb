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
      keyword(:fund_type) {content.table(:class,"pageTextNormal").img(:id, "intentRef_comboArrow")}
      keyword(:fund_combo_list) {content.div(:id,"intentRef_comboAllList")}

      #combo box for setting the campaign type
      keyword(:campaign_type) {content.table(:class,"pageTextNormal").img(:id, "campaignRef_comboArrow")}
      keyword(:campaign_combo_list) {content.div(:id,"campaignRef_comboAllList")}

      #combo box for setting the approach type
      keyword(:approach_type) {content.table(:class,"pageTextNormal").img(:id, "approachRef_comboArrow")}
      keyword(:approach_combo_list) {content.div(:id,"approachRef_comboAllList")}

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
      keyword(:soft_credit_info) {content.div(:id, 'tributeFields').div(:id, 'softCreditSection').img(:src, 'images/magnifying-glass.png')}

      # keyword(:tribute_search) {content.text_field(:id, 'searchString')}
      # keyword(:tribute_search) {content.div(:id, 'etap.fieldset.area.1').input(:id, "searchString")}
      # keyword(:tribute_search) {content.div(:id, 'etap.fieldset.area.1').text_field(:id, "searchString")}
      keyword(:tribute_search) {content.div(:class, 'popupWindow').text_field(:id, "searchString")}

      keyword(:search_for_an_account) {content.div(:id, 'etap.fieldset.area.1').input(:value,'Search for an Account')}
      keyword(:popup_search_text) { popupSearch.div(:id, 'etap.fieldset.area.1').form(:name, 'entitySearchForm').div.text_field(:id , 'searchString')}
      keyword(:popup_search_find) { popupSearch.div(:id, 'etap.fieldset.area.1').span(:id, 'buttonArea').input(:value, 'Find')}

      keyword(:soft_credit_amount) {content.div(:id, 'tributeFields').div(:id, 'softCreditSection').table(:id, 'softCreditFields').text_field(:id, 'newSoftCreditAmount')}

      keyword(:save_and) {content.select(:id, 'destinationAfterSave')}
      keyword(:save_and_button) {content.input(:class, 'saveAndButton')}

      keyword(:account_number) {content.div(:id, 'etap.fieldset.table.1').text_field(:id, 'accountNumber')}
      keyword(:entity_name_value) {content.hidden(:name, 'entityName')}
      keyword(:fund) {content.text_field(:id, 'intentRef_comboText')}
      keyword(:campaign) {content.text_field(:id, 'campaignRef_comboText')}
      keyword(:approach) {content.text_field(:id, 'approachRef_comboText')}

      keyword(:tribute_name) {content.div(:id, 'tributeNameInput')}
      keyword(:soft_credit_name) {content.td(:id, 'newSoftCreditNameInput').link}




      def popupSearch
        content.iframe(:id, 'popupFrame').when_present
      end

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
