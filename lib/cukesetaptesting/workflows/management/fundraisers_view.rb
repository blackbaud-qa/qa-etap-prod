module Cukesetaptesting
  module Management
    class FundraisersView < BaseView
      keyword(:management_fundraisers)  {content.a(:title,'Fundraisers')}
      keyword(:fundraiser_status) {content.div(:class,'info')}
      keyword(:fundraiser_no_fundraisers) {content.div(:class=>'bb-tile-title',:text=>/Base Web Address/)}
      keyword(:fundraiser_new_fundraiser) {content.a(:text,'New Fundraiser')}
      keyword(:new_fund_date) {content.div(:class,'calendarPopup').text_field(:id,'date')}
      keyword(:new_fund_name) {content.text_field(:name,'event.name')}
      keyword(:new_fundraiser_status) {content.select(:name,'enumPopulate(event.status)')}
      keyword(:new_fund_goal) {content.text_field(:name,'currencyPopulate(event.goal)')}
      keyword(:new_fundraiser_next) {content.input(:id,'wizardNavigationNext_1')}
      keyword(:new_fund_sitename) {content.text_field(:name,'eventOptions.siteName')}
      keyword(:new_fund_contactname) {content.text_field(:name,'eventOptions.contactName')}
      keyword(:new_fund_contactemail) {content.text_field(:name,'eventOptions.contactEmail')}
      keyword(:new_fund_templatefloat) {content.radio(:id,'label.float')}
      keyword(:select_main_page_text) {content.iframe(:id,'eventInfoHtml_ifr')}
      keyword(:main_page_text_bold_click) {content.div(:id,'mceu_0')}
      keyword(:main_page_text_align_center_click) {content.div(:id,'mceu_4')}
      keyword(:new_fund_team_goal) {content.text_field(:name,'currencyPopulate(eventOptions.recommendedTeamGoal)')}
      keyword(:new_fund_individual_goal) {content.text_field(:name,'currencyPopulate(eventOptions.recommendedIndividualGoal)')}
      keyword(:field_name) {content.i(:id,'questionField_comboArrow')}
      # keyword(:field_name_base_gender) {content.div(:id,'questionField_comboAllList_valueRow_47.0.2670')}
      keyword(:field_name_base_gender) {content.div(:text,'Base: Gender')}
      keyword(:required_check_box) {content.checkbox(:id,'questionRequired')}
      keyword(:new_fund_display_text) {content.text_field(:id,'questionDisplayText')}
      keyword(:new_fundraiser_add) {content.input(:id,'addQuestionButton')}
      keyword(:new_fund_fee_name) {content.text_field(:id,'feeName')}
      keyword(:new_fund_fee_amount){content.text_field(:id,'feeAmount')}
      keyword(:fee_level_fund){content.i(:id,'feeIntent_comboArrow')}
      # keyword(:fee_level_fund_general){content.div(:id,'feeIntent_comboAllList_valueRow_47.0.3397')}
      keyword(:fee_level_fund_general){content.div(:text,'General')}
      keyword(:new_fundraiser_add_fee_level) {content.input(:id,'addFeeButton')}
      keyword(:new_fund_second_fee_name) {content.text_field(:id,'feeName')}
      keyword(:new_fund_second_fee_amount){content.text_field(:id,'feeAmount')}
      keyword(:second_fee_level_fund){content.img(:id,'feeIntent_comboArrow')}
      keyword(:second_fee_level_fund_general){content.div(:id,'feeIntent_comboAllList_valueRow_47.0.3397')}
      keyword(:applied_to_donations_fund){content.i(:id,'refPopulate(eventOptions.donationFund)_comboArrow')}
      # keyword(:applied_to_donations_fund_general){content.div(:id,'refPopulate(eventOptions.donationFund)_comboAllList_valueRow_47.0.3397')}
      keyword(:applied_to_donations_fund_general){content.div(:id,'refPopulate(eventOptions.donationFund)_comboAllList').div(:text,'General')}
      keyword(:new_fundraiser_save_and_finish) {content.input(:id,'wizardNavigationButton_1_saveAndFinish')}
      keyword(:fundraiser_page_title){content.a(:text,'QA Fundraiser 1')}
      keyword(:new_fundraiser_page_title) {browser.div(:id,'etapAppSiteTitle').a(:text,'QA Fundraiser 1')}
      keyword(:existing_fund_templatechisel) {content.radio(:id,'label.chisel')}
      keyword(:add_main_page_text) {content.iframe(:id,'eventInfoHtml_ifr')}
      keyword(:main_page_text_align_left_click) {content.div(:id,'mceu_3')}
      # keyword(:select_status) {content.div(:id,'etap.fieldset.table.1').select(:name,'enumPopulate(event.status)')}
      keyword(:select_status) {content.select(:name,'enumPopulate(event.status)')}
      keyword(:select_status_disabled) {select_status.option(:value,"label.disabled")}
      keyword(:fundraisers_grid) {content.div(:id,'events_summary_1')}
      keyword(:sort_status) {content.a(:class,'status')}
      keyword(:new_fundraiser_content) {browser.div(:id,'etapAppEventInfo')}
      keyword(:register) {browser.a(:text,'Register')}
      keyword(:create_account) {browser.radio(:name,'createAccount')}
      keyword(:live_fundraiser_next) {browser.button(:value,'Next')}
      keyword(:live_fundraiser_first_name) {browser.text_field(:id,'firstName')}
      keyword(:live_fundraiser_last_name) {browser.text_field(:id,'lastName')}
      keyword(:live_fundraiser_email) {browser.text_field(:id,'email')}
      keyword(:live_fundraiser_password) {browser.text_field(:id,'password')}
      keyword(:live_fundraiser_confirm_password) {browser.text_field(:id,'confirm')}
      keyword(:live_fundraiser_security_question) {browser.select(:id,'basicSecurityQuestion')}
      keyword(:live_fundraiser_security_answer) {browser.text_field(:id,'securityAnswer')}
      keyword(:live_fundraiser_country) {browser.select(:id,'country')}
      keyword(:live_fundraiser_address) {browser.text_field(:id,'address')}
      keyword(:live_fundraiser_city) {browser.text_field(:id,'city')}
      keyword(:live_fundraiser_state) {browser.select(:id,'state')}
      keyword(:live_fundraiser_postal) {browser.text_field(:id,'zip')}
      keyword(:live_fundraiser_phone) {browser.text_field(:id,'phone')}
      keyword(:live_fundraiser_gender) {browser.select(:id,'Gender')}
      keyword(:live_fundraiser_create_new_team) {browser.radio(:id,'teamOptionCreate')}
      keyword(:live_fundraiser_fund_name) {browser.text_field(:id,'name')}
      keyword(:live_fundraiser_runner) {browser.label(:text=>/Runner/).parent.radio}
      keyword(:live_fundraiser_use_account_billing) {browser.checkbox(:id,'billingUseAccountInfo')}
      keyword(:live_fundraiser_payment_type_cc) {browser.radio(:id,'paymentMethodCC')}
      keyword(:live_fundraiser_card_type) {browser.select(:id,'paymentCardType')}
      keyword(:live_fundraiser_card_number) {browser.text_field(:id,'paymentCardNumber')}
      keyword(:live_fundraiser_card_security) {browser.text_field(:id,'paymentCvv2')}
      keyword(:live_fundraiser_card_exp_month) {browser.select(:id,'paymentExpirationMonth')}
      keyword(:live_fundraiser_card_exp) {browser.select(:id,'paymentExpirationYear')}
      keyword(:fundraising_content) {browser.div(:id,'etapAppMainContent')}
      keyword(:login) {browser.a(:text,'Login')}
      keyword(:live_fundraiser_login_email) {browser.text_field(:id,'username')}
      keyword(:live_fundraiser_login_pass) {browser.text_field(:id,'password')}
      keyword(:login_button) {browser.button(:value,'Login')}
      keyword(:fundraising_center_title) {browser.h2}
      keyword(:make_donation) {browser.a(:text,'Make a Donation')}
      keyword(:team_goal_select) {browser.radio(:id,'searchOption')}
      keyword(:fund_team_search) {browser.text_field(:id,'sponsorSearch')}
      keyword(:team_search) {browser.button(:value,'Search')}
      keyword(:john_sponsor) {browser.div(:id,'searchFormTable').radio(:name,'sponsor')}
      keyword(:billing_first_name) {browser.text_field(:id,'billingFirst')}
      keyword(:billing_last_name) {browser.text_field(:id,'billingLast')}
      keyword(:billing_country) {browser.select(:id,'billingCountry')}
      keyword(:billing_address) {browser.text_field(:id,'billingAddress')}
      keyword(:billing_city) {browser.text_field(:id,'billingCity')}
      keyword(:billing_state) {browser.select(:id,'billingState')}
      keyword(:billing_zip) {browser.text_field(:id,'billingZip')}
      keyword(:billing_phone) {browser.text_field(:id,'billingPhone')}
      keyword(:billing_email) {browser.text_field(:id,'billingEmail')}
      keyword(:donation_type) {browser.select(:id,'donationType')}
      keyword(:billing_amount) {browser.text_field(:id,'otherAmt')}
      keyword(:find_team) {browser.a(:text,'Find a Team/Participant')}
      keyword(:participant_search_name) {browser.text_field(:id,'searchTerm')}
      keyword(:participant_search) {browser.button(:value,'Search')}
      keyword(:participant_donors) {browser.table(:id,'sponsorListTable')}
      keyword(:fundraiser_total_raised) {browser.span(:id, 'eventRaised')}


      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
