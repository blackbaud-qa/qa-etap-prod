When(/^I click on Integrations on the management menu$/) do
  intMan = Management::EdhIntegration.new
  intMan.management_integrations_click
end

Then(/^I should be taken to the Integrations page$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.on_integrations_page?).to eq(true)
end

And (/^the Start Import button should be disabled on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_start_import_button_enabled?).to eq(false)
end

And(/^I click on the Set up button on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  intMan.set_up_click
end

And(/^I should see the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.setup_edh_modal_present?).to eq(true)
end

And(/^I enter '([^']*)' in the API key field on the set up EDH integration modal$/) do |field|
  intMan = Management::EdhIntegration.new(:api_key=>field)
  intMan.create
end

And(/^I enter '([^']*)' in the notifications area on the set up EDH integration modal$/) do |field|
  intMan = Management::EdhIntegration.new(:edh_notifications=>field)
  intMan.create
end

And(/^I click next on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.edh_integration_next_click
end

And(/^I click previous on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.edh_integration_previous_click
end

And(/^I click Save & Close on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.edh_integration_save_click
end

And(/^I click cancel on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.edh_integration_cancel_click
end

Then(/^the text on the Next button should change to '([^']*)' on the set up EDH integration modal$/) do |text|
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_integration_next_text_include? text).to eq(true)
end

Then(/^the Start import button should be enabled on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_start_import_button_enabled?).to eq(true)
end

And (/^I click the Start import button on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  intMan.edh_start_import_button_click
end

And (/^I should see the edit integration page$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.edit_integration_page_present?).to eq(true)
end

And(/^I click on the Edit set up button on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  intMan.edit_set_up_click
end

And(/^I click Save on the basic integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.basic_integration_save_click
end

Then(/^I should see '([^']*)' on the integrations page$/) do |text|
  intMan = Management::EdhIntegration.new
  expect(intMan.integrations_page_content_include? text).to eq(true)
end

And(/^I click on the Map Campaigns button on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  intMan.map_campaigns_click
end

And(/^I set the default eTapestry Fund to '([^']*)' on the set up EDH integration modal$/) do |selection|
  intMan = Management::EdhIntegration.new
  intMan.default_fund_select selection
end

And(/^I set the default eTapestry Campaign to '([^']*)' on the set up EDH integration modal$/) do |selection|
  intMan = Management::EdhIntegration.new
  intMan.default_campaign_select selection
end

And(/^I set the default eTapestry Approach to '([^']*)' on the set up EDH integration modal$/) do |selection|
  intMan = Management::EdhIntegration.new
  intMan.default_approach_select selection
end

And(/^I click Save on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.campaign_mappings_save_click
end

And(/^I click on the Select Historical Data button on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  intMan.select_historical_data_click
end

And (/^I click Historical data created since on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.historical_data_created_since_click
end

And(/^I click All historical data on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.all_historical_data_set
end

Then(/^I should see the Import button on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.import_button_present?).to eq(true)
end

And(/^I click on the EDH sign up link$/) do
  intMan = Management::EdhIntegration.new
  intMan.us_edh_signup_click
end

Then(/^I should be taken to the US EDH signup page$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.on_us_EDH_sign_up_page?).to eq(true)
end

And(/^I click on the EDH user guide link$/) do
  intMan = Management::EdhIntegration.new
  intMan.edh_user_guide_click
end

Then(/^I should be taken to the EDH user guide page$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.on_EDH_user_guide_page?).to eq(true)
end

Then(/^I should see the '([^']*)' error on the set up EDH integration modal$/) do |error|
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_integration_modal_error_include? error).to eq(true)
end

And(/^the next button should be disabled on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.next_button_enabled?).to eq(false)
end

And(/^the Save and Close button should be disabled on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.save_button_enabled?).to eq(false)
end

And (/^I clear out the API key field in the notifications area on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.delete_API_key_value
end

Then (/^the API key field should be highlighted in red$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.api_key_validation?).to eq(true)
end

Then (/^the Send data import notifications to field should be highlighted in red$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_email_validation?).to eq(true)
end

And (/^I clear out the email field in the notifications area on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.delete_edh_email_value
end

And(/^I click on the Edit Mappings button on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  intMan.edit_mappings_click
end

And(/^the EDH integration has been set up$/) do
  intMan = Management::EdhIntegration.new

  if expect(intMan.edh_start_import_button_enabled?).to eq(false)
    step "I click on the Set up button on the integrations page"
    step "I enter '68ef0843-4714-4d24-8033-c0204fb945e2' in the API key field on the set up EDH integration modal"
    step "I enter 'qa-1@blackbaud.com' in the notifications area on the set up EDH integration modal"
    step "I click next on the set up EDH integration modal"
    step "I set the default eTapestry Fund to 'General' on the set up EDH integration modal"
    step "I set the default eTapestry Campaign to 'Capital' on the set up EDH integration modal"
    step "I set the default eTapestry Approach to 'Personal Solicitation' on the set up EDH integration modal"
    step "I click next on the set up EDH integration modal"
    step "I click All historical data on the set up EDH integration modal"
    step "I click next on the set up EDH integration modal"
    step "I click next on the set up EDH integration modal"
    step "I should be taken to the Integrations page"
  end

end

And(/^I verify that an EDH Hero account was imported correctly$/) do
  step "I type 'Kimberly Hammer' into the dynamic search field"
  step "I press Enter on the keyboard"
  step "I click on 'Kimberly Hammer' in the search results"
  step "I click on 'Personas' in the account header"
  step "the Address Lines should be set to '615 Lockerbie Pl'"
  step "the City should be set to 'Carmel'"
  step "the State should be set to 'IN'"
  step "the Postal Code should be set to '46032'"
  step "the Voice should be set to '+1 3174955697'"
  step "the Email should be set to 'kimberly.hammer@blackbaud.com'"
  step "the Short Salutation should be set to 'Kimberly'"
  step "the Long Salutation should be set to 'Kimberly Hammer'"
  step "the Envelope Salutation should be set to 'Kimberly Hammer'"
  step "I click on 'Account Settings' in the account header"
  step "the Name Format value should be set to 'Individual'"
  step "the First Name should be set to 'Kimberly'"
  step "the Last Name should be set to 'Hammer'"
  step "the Account Name should be set to 'Kimberly Hammer'"
  step "the Sort Name should be set to 'Hammer, Kimberly'"
  step "the Recognition Name should be set to 'Kimberly Hammer'"
  step "the Recognition Type should be set to '(account name)'"
  step "I click on 'Defined Fields' in the account header"
  step "the 'EDH Account Id' should be set to '45728f06-73f9-42bc-9844-a6ba1c70dd0a'"
  step "the 'EDH Account Type' should be set to 'Hero'"
  step "the 'Data Source' should be set to 'EDH Addition'"
end

And(/^I verify that an EDH Donor account was imported correctly$/) do
  step "I type 'Tom' into the dynamic search field"
  step "I press Enter on the keyboard"
  step "I click on 'Tom Barlette' in the search results"
  step "I click on 'Personas' in the account header"
  step "the Address Lines should be set to '14 E. 10th St'"
  step "the City should be set to 'Fishers'"
  step "the State should be set to 'IN'"
  step "the Postal Code should be set to '46034'"
  step "the Email should be set to 'kimberly.hammer@blackbaud.com'"
  step "the Short Salutation should be set to 'Tom'"
  step "the Long Salutation should be set to 'Tom Barlette'"
  step "the Envelope Salutation should be set to 'Tom Barlette'"
  step "I click on 'Account Settings' in the account header"
  step "the Name Format value should be set to 'Individual'"
  step "the First Name should be set to 'Tom'"
  step "the Last Name should be set to 'Barlette'"
  step "the Account Name should be set to 'Tom Barlette'"
  step "the Sort Name should be set to 'Barlette, Tom'"
  step "the Recognition Name should be set to 'Tom Barlette'"
  step "the Recognition Type should be set to '(account name)'"
  step "I click on 'Defined Fields' in the account header"
  step "the 'EDH Account Type' should be set to 'Donor'"
  step "the 'EDH Communication Preferences' should be set to 'Opt-In'"
  step "the 'Data Source' should be set to 'EDH Addition'"
end

And (/^I click import now on the everydayhero integration tile$/) do
  intMan = Management::EdhIntegration.new
  intMan.import_now_link_click
  intMan.import_now_confirm_button_click
end

Then (/^I wait for the edh import to finish successfully$/) do
  intMan = Management::EdhIntegration.new
  intMan.import_finish_successfully_wait
end

Then (/^I verify that the EDH Notifications Email Address is set to '([^']*)'$/) do |value|
  intMan = Management::EdhIntegration.new
  intMan.edit_set_up_click
  expect(intMan.edh_notifications_email_address).to eq(value)
end

Then (/^I verify that the EDH API Key is set to '([^']*)'$/) do |value|
  intMan = Management::EdhIntegration.new
  intMan.edit_set_up_click
  expect(intMan.edh_api_key_value).to eq(value)
end

Then (/^I verify that the default Fund, Campaign, and Approach are set to '([^']*)', '([^']*)', and '([^']*)'$/) do |fund,campaign,approach|
  intMan = Management::EdhIntegration.new
  intMan.edit_mappings_click
  expect(intMan.edh_default_fund_value(fund)).to eq(true)
  expect(intMan.edh_default_campaign_value(campaign)).to eq(true)
  expect(intMan.edh_default_approach_value(approach)).to eq(true)
end

And (/^I add '([^']*)' as a new Fund/) do |value|
  intMan = Management::EdhIntegration.new
  intMan.new_fund_link_click
  intMan.set_new_fund_name(value)
end

And (/^I add '([^']*)' as a new Campaign/) do |value|
  intMan = Management::EdhIntegration.new
  intMan.new_campaign_link_click
  intMan.set_new_campaign_name(value)
end

And (/^I add '([^']*)' as a new Approach/) do |value|
  intMan = Management::EdhIntegration.new
  intMan.new_approach_link_click
  intMan.set_new_approach_name(value)
end

And (/the Save and Close button should be disabled on the set up edit mappings EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_integration_edit_mappings_save_enabled?).to eq(false)
end

And (/^I click cancel on the edit mappings EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.edh_integration_edit_mappings_cancel_click
end

And (/^I click the Pause Integration link on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.edh_pause_integration_link_click
end

Then (/^I should see the Pause Integration link change to Resume Integration on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_resume_integration_link_present?).to eq(true)
end

And (/^I should see a message confirming that the integration was paused$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_integration_paused_message_present?).to eq(true)
end

And (/^I click the Resume Integration link on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.edh_resume_integration_link_click
end

Then (/^I should see the Resume Integration link change to Pause Integration on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_pause_integration_link_present?).to eq(true)
end

And (/^I verify that an EDH Participation was imported correctly$/) do
  step "I type 'Joe' into the dynamic search field"
  step "I press Enter on the keyboard"
  step "I click on 'Joe Runner' in the search results"
  step "I click on 'Journal' in the account header"
  step "I click on the Participation listed in the journal"
  step "the date on the Participation should be set to '8/25/2016'"
  step "the Fundraiser should be set to 'Running with eTapestry 2016'"
  step "the Participant Goal should be set to '$1,000.00'on the participation"
  step "the Display Name should be set to 'Help Me Support eTapestry!' on the participation"
  step "the 'EDH Page Id' should be set to 'edc1e64c-0004-4000-8000-0000000495fb'"
  step "the 'EDH Page URL' should be set to 'https://running-with-etapestry-2016.everydayhero-staging.com/us/help-me-support-etapestry'"
  step "the 'EDH Team Name' should be set to 'Team Blackbaud Employees'"
  step "the 'EDH Team URL' should be set to 'https://running-with-etapestry-2016.everydayhero-staging.com/us/team-blackbaud-employees'"
  step "the 'EDH Team Position' should be set to 'Leader'"
  step "the 'Data Source' should be set to 'EDH Addition'"
end

And (/^I click on the Participation listed in the journal$/) do
  intMan = Management::EdhIntegration.new
  intMan.journal_page_participation_link_click
end

And (/^the Participant Goal should be set to '([^']*)'on the participation$/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.participant_goal_value).to eq(value)
end

And (/^the Display Name should be set to '([^']*)' on the participation$/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.participation_display_name_value).to eq(value)
end

And (/^I change the edh email to '([^']*)' in the EDH Basic Integrations Settings pop up/) do |value|
  intMan = Management::EdhIntegration.new
  intMan.change_edh_notification_email_address(value)
end

And (/^I change the edh API to '([^']*)' in the EDH Basic Integrations Settings pop up/) do |value|
  intMan = Management::EdhIntegration.new
  intMan.change_edh_api_key(value)
end

And (/^I should see the edh warning message '([^']*)'/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.invalid_api_message_visible(value)).to eq(true)
end

And (/^I click Save & Close on the set up EDH campaign mapping modal/) do
  intMan = Management::EdhIntegration.new
  intMan.click_save_and_close_mappings_modal
end

And (/^the Fundraiser should be set to '([^']*)'$/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.participation_fundraiser_drop_down_value).to eq(value)
end

And (/^the date on the Participation should be set to '([^']*)'$/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.participation_fundraiser_date_value).to eq(value)
end

And (/^I verify that an EDH Gift was imported correctly$/) do
  step "I type 'Jose' into the dynamic search field"
  step "I press Enter on the keyboard"
  step "I click on 'Jose Adams-Conner' in the search results"
  step "I click on 'Journal' in the account header"
  step "I click on the '$100.00' journal entry on the journal page"
  step "the date on the Gift should be set to '8/25/2016'"

  steps %Q{
  And the Received Amount should be set to '$100.00'
  And the Non-Deductible Amount should be set to the '$0.00'
  And the Fund should be set to 'General'
  And the Campaign should be set to 'Capital'
  And the Approach should be set to 'Personal Solicitation'
  And the Fundraiser should be set to 'Running with eTapestry 2016'
  And the Fundraiser Donation Message should be set to 'Go girl!- Jose'
  And the Receipt field should be set to '001467'
  And I click the Tribute bar
  And the Soft Credit Information should be set to 'Beyonce'
  And the Soft Credit Amount should be set to '$100.00'
  And I click on the User Defined Fields section on the new payment page
  And I should see 'EDH Transaction Id' set to 'de28f269-a5ea-45a1-a475-c75cb77c6e6d' on the payment page
  And I should see 'EDH Date Gift Received' set to '8/25/2016' on the payment page
  And I should see 'EDH Transaction Type' set to 'P2P' on the payment page
  And I should see 'Data Source' set to 'EDH Addition' on the payment page
  }

end

And (/^I click on the '([^']*)' journal entry on the journal page$/) do |value|
  intMan = Management::EdhIntegration.new
  intMan.specific_journal_entry_click(value)
end

And (/^the Fundraiser Donation Message should be set to '([^']*)'$/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.gift_fundraiser_donation_message_value).to eq(value)
end

And (/^the Receipt field should be set to '([^']*)'$/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.gift_receipt_field_value).to eq(value)
end

And (/^the date on the Gift should be set to '([^']*)'$/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.gift_date_value).to eq(value)
end