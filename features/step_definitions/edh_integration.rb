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

And(/^the EDH integration has been set up/) do
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

And(/^I verify that a Hero account was imported correctly/) do
  step "I type 'Kimberly Hammer' into the dynamic search field"
  step "I press Enter on the keyboard"
  step "I click on 'Kimberly Hammer' in the search results"
  step "I click on 'Personas' in the account header"
  step "the Address Lines should be set to '615 Lockerbie Pl'"
  step "the City should be set to 'Carmel'"
  step "the State should be set to 'IN'"
  step "the Postal Code should be set to '46032'"
  step "the Voice should be set to '(317) 495-5697'"
  step "the Email should be set to 'kimberly.hammer@blackbaud.com'"
  step "the Short Salutation should be set to 'Kimberly'"
  step "the Long Salutation should be set to 'Mrs. Hammer'"
  step "the Envelope Salutation should be set to 'Mrs. Kimberly Hammer'"
  step "I click on 'Account Settings' in the account header"
  step "the Name Format value should be set to 'Individual'"
  step "the First Name should be set to 'Kimberly'"
  step "the Last Name should be set to 'Hammer'"
  step "the Account Name should be set to 'Kimberly Hammer'"
  step "the Sort Name should be set to 'Hammer, Kimberly'"
  step "the Recognition Name should be set to 'Kimberly Hammer'"
  step "the Recognition Type should be set to '(account name)'"
  step "I click on 'Defined Fields' in the account header"
  step "the 'EDH Account Id' should be set to 'XXX'"
  step "the 'EDH Account Type' should be set to 'Hero'"
  step "the 'Data Source' should be set to 'EDH Addition'"
end

And(/^I verify that a Donor account was imported correctly/) do
  step "I type 'Tom' into the dynamic search field"
  step "I press Enter on the keyboard"
  search = Account::Search.new
  search.press_enter
  step "I click on 'Tom Barlette' in the search results"
  step "I click on 'Personas' in the account header"
  step "the Address Lines should be set to '14 E. 10th St'"
  step "the City should be set to 'Fishers'"
  step "the State should be set to 'IN'"
  step "the Postal Code should be set to '46034'"
  step "the Email should be set to 'kimberly.hammer@blackbaud.com'"
  step "the Short Salutation should be set to 'Tom'"
  step "the Long Salutation should be set to 'Mr. Barlette'"
  step "the Envelope Salutation should be set to 'Mr. Tom Barlette'"
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
  step "the 'Data Source' should be set to 'EDH Addition'"
end

And (/^I click import now on the everydayhero integration tile/) do
  intMan = Management::EdhIntegration.new
  intMan.import_now_link_click
end

Then (/^I wait for the edh import to finish successfully/) do
  intMan = Management::EdhIntegration.new
  intMan.import_finish_successfully_wait
end

Then (/^I verify that the EDH Notifications Email Address is set to '([^']*)'/) do |value|
  intMan = Management::EdhIntegration.new
  intMan.edit_set_up_click
  expect(intMan.edh_notifications_email_address).to eq(value)
end

Then (/^I verify that the EDH API Key is set to '([^']*)'/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_api_key_value).to eq(value)
end

Then (/^I verify that the default Fund, Campaign, and Approach are set to '([^']*)', '([^']*)', and '([^']*)'/) do |fund,campaign,approach|
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_default_fund_value).to eq(fund)
  expect(intMan.edh_default_campaign_value).to eq(campaign)
  expect(intMan.edh_default_approach_value).to eq(approach)
end

And (/^I add '([^']*)' as a new Fund/) do |value|
  intMan = Management::EdhIntegration.new(:new_fund_name=>value)
  intMan.new_fund_link_click
  intMan.create
  step "And I click Save And 'View all Funds'"
end

And (/^I add '([^']*)' as a new Campaign/) do |value|
  intMan = Management::EdhIntegration.new(:new_campaign_name=>value)
  intMan.new_campaign_link_click
  intMan.create
  step "And I click Save And 'View all Campaigns'"
end

And (/^I add '([^']*)' as a new Approach/) do |value|
  intMan = Management::EdhIntegration.new(:new_approach_name=>value)
  intMan.new_approach_link_click
  intMan.create
  step "And I click Save And 'View all Approaches'"
end
