module Cukesetaptesting
  module Giving
    class GiftPledgeView < BaseView
      keyword(:date_field) {content.div(:class,"calendarPopup").text_field(:id, "date")}
      # keyword(:date_field) {content.text_field(:id, "date")}
      keyword(:calendar_button) {content.div(:class,"calendarPopup").img(:src, "/prod/images/newCalendarIcon.png")}
      #keyword(:transactions) {add_entry.option(:text, 'Gift/Pledge')}

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
      def expiration_month month_value
        select_month.option(:value => month_value)
      end

      keyword(:select_year) {content.div(:id, 'creditCardFields').select(:name, 'creditCardExpirationYear')}
      def expiration_year year_value
        select_year.option(:value => year_value)
      end

      keyword(:credit_card_name) {content.div(:id, 'creditCardFields').text_field(:name => 'creditCardName')}

      keyword(:save) {content.div(:id, 'etap.fieldset.area.9').input(:name, 'saveAnd')}
      keyword(:saveAnd) {content.div(:id, 'etap.fieldset.area.5').input(:name, 'saveAnd')}

      keyword(:yes) {content.div(:class, 'popFooter').input(:id, 'id')} #id for div changes each time so used the class

      keyword(:tribute_bar) {content.div(:id, 'tributeFieldsTitleBar')}
      keyword(:tribute_info) {content.div(:id, 'tributeFields').img(:src, 'images/magnifying-glass.png')}
      keyword(:soft_credit_info) {content.div(:id, 'tributeFields').div(:id, 'softCreditSection').img(:src, 'images/magnifying-glass.png')}

      keyword(:tribute_search) {content.iframe(:id,'popupFrame').form(:name,'entitySearchForm').text_field(:id,'searchString')}
      keyword(:find) {content.iframe(:id,'popupFrame').form(:name,'entitySearchForm').input(:value,'Find')}
      keyword(:tribute_persona) {content.iframe(:id,'popupFrame').a(:id,'entityName39.0.1150031')}

      keyword(:search_icon2) {content.div(:id, 'softCreditSection').img(:src, 'images/magnifying-glass.png')}
      keyword(:credit_info) {content.iframe(:id,'popupFrame').form(:name,'entitySearchForm').text_field(:id,'searchString')}
      keyword(:persona) {content.iframe(:id,'popupFrame').a(:id,'entityName39.0.3669')}

      keyword(:credit_amount) {content.div(:id, 'softCreditSection').text_field(:id,'newSoftCreditAmount')}

      keyword(:fund_input_arrow) {content.div(:id, 'etap.fieldset.area.2').img(:id, 'intentRef_comboArrow')}
      keyword(:fund_unrestricted) {content.div(:id, 'intentRef_comboAllList_valueRow_39.0.3393')}

      keyword(:campaign_input_arrow) {content.div(:id, 'etap.fieldset.area.2').img(:id, 'campaignRef_comboArrow')}
      keyword(:campaign_annual) {content.div(:id, 'campaignRef_comboAllList_valueRow_39.0.3345')}

      keyword(:approach_input_arrow) {content.div(:id, 'etap.fieldset.area.2').img(:id, 'approachRef_comboArrow')}
      keyword(:approach) {content.div(:id, 'approachRef_comboAllList_valueRow_39.0.3367')}

      keyword(:approach_direct_mail) {content.div(:id, 'approachRef_comboAllList_valueRow_39.0.3365')}

      keyword(:process_transaction) {content.select(:id, 'destinationAfterSave').option(:value,'processTransaction')}

      keyword(:edit) {content.select(:id, 'destinationAfterSave').option(:value,'edit')}
      keyword(:pledged_amount) {content.table(:class, 'pageTextNormal').text_field(:id, 'receivable')}
      keyword(:pledge_schedule) {content.div(:id, 'newPledgeScheduleLink').a(:href,'javascript:saveGiftAndEditSchedule()')}
      keyword(:frequency) {content.div(:id, 'SimpleDiv').option(:value, '12')}
      keyword(:installment_date) {content.div(:id, 'etap.fieldset.area.6').text_field(:id, 'scheduleFirstInstallmentDate')}
      keyword(:installment_amount) {content.div(:id, 'SimpleDiv').text_field(:id, 'scheduleInstallmentAmount')}
      keyword(:recurring_installment_amount) {content.text_field(:name,'installmentAmount')}
      keyword(:pledge_info_bar) {content.div(:id, 'pledgeFieldsTitleBar')}

      keyword(:split_received_field) {content.div(:id,"segmentedGiftHeader").text_field(:id, "received")}

      keyword(:segment) {content.div(:id, 'segmentedGiftHeader').text_field(:name, 'numberOfSegments')}
      keyword(:add_segment) {content.div(:id, 'segmentedGiftHeader').button(:value, 'Add Segments')}

      keyword(:search_for_an_account) {content.div(:id, 'etap.fieldset.area.1').input(:value,'Search for an Account')}
      keyword(:popup_search_text) { popupSearch.form(:name,'entitySearchForm').text_field(:id,'searchString')}
      keyword(:popup_search_find) { popupSearch.form(:name,'entitySearchForm').input(:value,'Find') }

      keyword(:soft_credit_amount) {content.div(:id, 'tributeFields').div(:id, 'softCreditSection').table(:id, 'softCreditFields').text_field(:id, 'newSoftCreditAmount')}

      keyword(:save_and) {content.select(:id, 'destinationAfterSave')}
      keyword(:save_and_button) {content.input(:class, 'saveAndButton')}

      keyword(:account_number) {content.div(:id, 'etap.fieldset.table.1').text_field(:id, 'accountNumber')}
      keyword(:entity_name_value) {content.hidden(:name, 'entityName')}
      keyword(:fund) {content.text_field(:id, 'intentRef_comboText')}
      keyword(:campaign) {content.text_field(:id, 'campaignRef_comboText')}
      keyword(:approach) {content.text_field(:id, 'approachRef_comboText')}

      keyword(:tribute_name) {content.td(:id, 'tributeNameInput')}
      keyword(:soft_credit_name) {content.td(:id, 'newSoftCreditNameInput').link}

      #OTG_INTL keyword(:journal_link)  {content.a(:text,'Journal')}
      keyword(:journal_link)  {content.div(:id => 'topMenu').li(:index => 3).a}

      #combo box for adding a new journal entry from the Add New... combo box
      keyword(:add_new_journal_type) {content.select(:id, 'addEntry')}

      keyword(:new_pledge_date) {content.text_field(:name, 'date')}
      keyword(:set_pledged_field) {content.text_field(:name, 'receivable')}
      #OTG_INTL keyword(:create_pledge_schedule) {content.a(:text, 'Create Pledge Schedule')}
      keyword(:create_pledge_schedule) {content.div(:id => 'newPledgeScheduleLink').a}
      keyword(:select_frequency_value) {content.select(:id, 'pledgeFrequencySelect')}
      keyword(:first_installment_date) {content.input(:name, 'scheduleForm.firstInstallmentDate')}
      keyword(:set_installment_amount) {content.text_field(:name, 'scheduleForm.installmentAmount')}
      #DEV_HELP
      keyword(:add_a_payment_for_this_pledge) {content.a(:text, 'Add a Payment for this Pledge')}
      keyword(:set_payment_check_date) {content.text_field(:name, "checkDate")}
      keyword(:set_check_number) {content.text_field(:name, 'checkNumber')}
      keyword(:user_defined_fields_section) {content.div(:id, 'userDefinedFieldsTitleBar')}
      keyword(:gift_types_section) {content.div(:id, 'giftTypesTitleBar')}
      keyword(:payment_delete_button) {content.button(:name, 'deleteButton')}
      keyword(:pledge_entry_to_click) {content.a(:text, 'Pledge')}
      #OTG_INTL keyword(:more_options_link) {content.a(:text, 'More Options')}
      keyword(:more_options_link) {content.a(:id, 'advancedToggle')}
      keyword(:uncheck_all_link) {content.a(:text, 'Uncheck All')}
      keyword(:pledge_checkbox) {content.checkbox(:value, 'label.pledge')}
      keyword(:find_button_journal_page) {content.button(:value, 'Find')}
      keyword(:journal_filter_results) {content.div(:id, 'etap.fieldset.area.3')}
      keyword(:copy_pledge_udfs) {content.input(:name, 'copyUdfsToFuturePayments')}

      keyword(:bob_barker_junior) {content.a(:text, 'Bob Barker Junior')}
      keyword(:journal_page_gift) {content.a(:text, 'Gift')}
      keyword(:non_deductible_field) {content.text_field(:name, 'nonDeductibleAmount')}

      keyword(:segment_one_received_amount) {content.table(:class, 'formLabel').text_field(:name, 'segmentReceived(1)')}
      keyword(:segment_two_received_amount) {content.div(:id,'etap.fieldset.table.9').text_field(:name, 'segmentReceived(2)')}
      keyword(:set_gift_type_segment_one_value) {content.div(:id, 'giftTypes1').select(:name, 'paymentType(1)')}
      keyword(:segment_one_check_date) {content.div(:id, 'giftTypes1').text_field(:name, 'checkDate(1)')}
      keyword(:segment_one_check_number) {content.div(:id, 'giftTypes1').text_field(:name, 'checkNumber(1)')}
      keyword(:tribute_bar_click_segment_one_click) {content.div(:id, 'etap.fieldset.table.5').div(:id, 'tributeFields1TitleBar')}
      keyword(:gift_bar_segment_one) {content.div(:id,'etap.fieldset.table.5').div(:id,'giftTypes1TitleBar')}
      keyword(:tribute_icon_click_segment_one_click) {content.div(:id, 'tributeFields1').img(:src, 'images/magnifying-glass.png')}
      keyword(:soft_credit_icon_click_segment_one_click) {content.div(:id, 'tributeFields1').div(:id, 'softCreditSection').img(:src, 'images/magnifying-glass.png')}
      keyword(:segment_one_soft_credit_amount) {content.div(:id, 'softCreditFields1').text_field(:name, 'newSoftCreditAmount(1)')}
      keyword(:tribute_bar_click_segment_two_click) {content.div(:id, 'etap.fieldset.table.11').div(:id, 'otherFieldsAccordion2').div(:id, 'tributeFields2TitleBar')}
      keyword(:soft_credit_icon_click_segment_two_click) {content.div(:id, 'tributeFields2').div(:id, 'softCreditSection').img(:src, 'images/magnifying-glass.png')}
      keyword(:segment_two_soft_credit_amount) {content.div(:id, 'softCreditFields2').text_field(:name, 'newSoftCreditAmount(2)')}
      keyword(:user_defined_fields_bar_segment_two_click) {content.div(:id, 'etap.fieldset.table.11').div(:id, 'userDefinedFields2TitleBar')}
      keyword(:expand_all_segments_click) {content.div(:id, 'collapseSegments').a(:text, 'Expand All Segments')}
      keyword(:split_transaction_delete_button) {content.div(:id, 'etap.fieldset.area.15').button(:value, 'Delete')}
      keyword(:split_transaction_checkbox) {content.checkbox(:value, 'label.segmentedTransaction')}
      keyword(:segment_one_received_field) {content.div(:id, 'etap.fieldset.table.4').text_field(:name, 'segmentReceived(1)')}
      keyword(:segment_one_fund_value) {content.div(:id, 'etap.fieldset.table.4').input(:id, 'intentRef(1)_comboText')}
      keyword(:segment_one_campaign_value) {content.div(:id, 'etap.fieldset.table.4').input(:id, 'campaignRef(1)_comboText')}
      keyword(:segment_one_approach_value) {content.div(:id, 'etap.fieldset.table.4').input(:id, 'approachRef(1)_comboText')}
      keyword(:segment_one_check_date_value) {content.div(:id, 'etap.fieldset.table.5').text_field(:name, 'checkDate(1)')}
      keyword(:segment_one_check_number_value) {content.div(:id, 'etap.fieldset.table.5').text_field(:name, 'checkNumber(1)')}
      keyword(:segment_one_tribute_value) {content.div(:id, 'tributeFields1').span(:id, 'tributeNameDiv1')}
      keyword(:segment_one_soft_credit_name_value)  {content.div(:id, 'tributeFields1').span(:id, 'newSoftCreditNameDiv1')}
      keyword(:segment_one_soft_credit_amount_value) {content.div(:id, 'softCreditFields1').input(:name, 'newSoftCreditAmount(1)')}
      keyword(:segment_two_received_field) {content.div(:id, 'etap.fieldset.area.10').text_field(:name, 'segmentReceived(2)')}
      keyword(:segment_two_fund_value) {content.div(:id, 'etap.fieldset.area.10').input(:id, 'intentRef(2)_comboText')}
      keyword(:segment_two_campaign_value) {content.div(:id, 'etap.fieldset.area.10').input(:id, 'campaignRef(2)_comboText')}
      keyword(:segment_two_approach_value) {content.div(:id, 'etap.fieldset.area.10').input(:id, 'approachRef(2)_comboText')}
      keyword(:segment_two_tribute_value) {content.div(:id, 'tributeFields2').span(:id, 'tributeNameDiv2')}
      keyword(:segment_two_soft_credit_name_value)  {content.div(:id, 'tributeFields2').span(:id, 'newSoftCreditNameDiv2')}
      keyword(:segment_two_soft_credit_amount_value) {content.div(:id, 'softCreditFields2').input(:name, 'newSoftCreditAmount(2)')}
      keyword(:udf_bar_click_segment_two_click) {content.div(:id, 'userDefinedFields2TitleBar')}

      keyword(:journal_split_transaction_click) {content.a(:text, 'Split Transaction')}
      keyword(:segment_three_received_amount) {content.div(:id, 'etap.fieldset.area.16').text_field(:name, 'segmentReceived(3)')}
      keyword(:set_gift_type_segment_three_value) {content.div(:id, 'giftTypes3').select(:name, 'paymentType(3)')}
      keyword(:segment_three_check_date) {content.div(:id, 'giftTypes3').text_field(:name, 'checkDate(3)')}
      keyword(:segment_three_check_number) {content.div(:id, 'giftTypes3').text_field(:name, 'checkNumber(3)')}
      keyword(:delete_segment_three_click)  {content.div(:id, 'etap.fieldset.table.15').button(:name, 'deleteSegment3')}
      keyword(:edit_split_received_field) {content.table(:id, 'etap.fieldset.table.2').text_field(:name, 'received')}
      keyword(:edit_segment_value) {content.table(:id, 'etap.fieldset.table.2').text_field(:name, 'numberOfSegments')}




      #Fund combo box for segment 3 of split transaction
      keyword(:fund_type_segment_three) {content.div(:id,'etap.fieldset.table.16').img(:id, 'intentRef(3)_comboArrow')}
      keyword(:fund_combo_list_segment_three) {content.div(:id,'intentRef(3)_comboAllList')}


      #Fund combo box for segment 1 of split transaction
      keyword(:fund_type_segment_one) {content.div(:id,'etap.fieldset.table.3').img(:id, 'intentRef(1)_comboArrow')}
      keyword(:fund_combo_list_segment_one) {content.div(:id,'intentRef(1)_comboAllList')}

      #Campaign combo box for segment 1 of split transaction
      keyword(:campaign_type_segment_one) {content.div(:id,'etap.fieldset.table.3').img(:id, 'campaignRef(1)_comboArrow')}
      keyword(:campaign_combo_list_segment_one) {content.div(:id,'campaignRef(1)_comboAllList')}

      #Approach combo box for segment 1 of split transaction
      keyword(:approach_type_segment_one) {content.div(:id,'etap.fieldset.table.3').img(:id, 'approachRef(1)_comboArrow')}
      keyword(:approach_combo_list_segment_one) {content.div(:id,'approachRef(1)_comboAllList')}

      keyword(:page_title) {content.div(:class,'pageTitle')}
      keyword(:process_type_sepa) {content.radio(:id,'processTypeSEPA')}
      keyword(:IBAN) {content.text_field(:id,'IBANNumber')}
      keyword(:BIC) {content.text_field(:id,'BICNumber')}
      keyword(:mandate_sig_date) {content.text_field(:id,'mandateSignatureDate')}
      keyword(:mandate_id) {content.text_field(:name,'mandateId')}
      keyword(:mandate_manual) {content.checkbox(:name,'manualMandateCheck')}
      keyword(:journal_page_participation) {content.a(:text,'Participation')}

      #Fund combo box for segment 2 of split transaction
      keyword(:fund_type_segment_two) {content.div(:id,'etap.fieldset.table.9').img(:id, 'intentRef(2)_comboArrow')}
      keyword(:fund_combo_list_segment_two) {content.div(:id,'intentRef(2)_comboAllList')}

      #Campaign combo box for segment 2 of split transaction
      keyword(:campaign_type_segment_two) {content.div(:id,'etap.fieldset.table.9').img(:id, 'campaignRef(2)_comboArrow')}
      keyword(:campaign_combo_list_segment_two) {content.div(:id,'campaignRef(2)_comboAllList')}

      #Approach combo box for segment 2 of split transaction
      keyword(:approach_type_segment_two) {content.div(:id,'etap.fieldset.table.9').img(:id, 'approachRef(2)_comboArrow')}
      keyword(:approach_combo_list_segment_two) {content.div(:id,'approachRef(2)_comboAllList')}
      keyword(:journal_page_soft_credit) {content.a(:text, 'Soft Credit')}
      keyword(:journal_soft_credit_delete) {content.button(:value,'Delete')}

      def popupSearch
        content.iframe(:id, 'popupFrame') #.when_present
        # when_present was necessary at one point to get the iframe to work but it doesn't look like it's needed now.
      end

      def popupTextLink(text)
        popupSearch.a(:text, text)
      end

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

      def payment_udf_to_click(udf)
        content.link(:text, udf + ':')
      end

      def click_segment_two_udf_click(udf)
        content.div(:id,'userDefinedFields2').link(:text, udf + ':')
      end


    end
  end
end
