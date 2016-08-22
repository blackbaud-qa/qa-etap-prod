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
  intMan = Management::EdhIntegration.new(:notifications=>field)
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
  intMan.edh_signup_click
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

And (/^I clear out the email field in the notifications area on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.delete_edh_email_value
end

And(/^I click on the Edit Mappings button on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  intMan.edit_mappings_click
end

# And(/^I set up EDH so that I can run an on demand import/) do
#   step "I click on the Set up button on the integrations page"
#   step "I enter 'API KEY' in the API key field on the set up EDH integration modal"
#   step "I enter 'lance.moore@blackbaud.com' in the notifications area on the set up EDH integration modal"
#   step "I click next on the set up EDH integration modal"
#   step "I set the default eTapestry Fund to 'General' on the set up EDH integration modal"
#   step "I set the default eTapestry Campaign to 'Capital' on the set up EDH integration modal"
#   step "I set the default eTapestry Approach to 'Personal Solicitation' on the set up EDH integration modal"
#   step "I click next on the set up EDH integration modal"
#   step "I click All historical data on the set up EDH integration modal"
#   step "I click next on the set up EDH integration modal"
#   step "I click next on the set up EDH integration modal"
#   step "I should be taken to the Integrations page"
# end

And(/^the EDH integration has been set up/) do
  intMan = Management::EdhIntegration.new

  if expect(intMan.edh_start_import_button_enabled?).to eq(false)
    step "I click on the Set up button on the integrations page"
    step "I enter 'API KEY' in the API key field on the set up EDH integration modal"
    step "I enter 'lance.moore@blackbaud.com' in the notifications area on the set up EDH integration modal"
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