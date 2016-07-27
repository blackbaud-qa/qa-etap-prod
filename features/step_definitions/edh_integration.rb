When(/^I click on Integrations on the management menu$/) do
  intMan = Management::EdhIntegration.new
  intMan.management_integrations_click
end

Then(/^I should be taken to the Integrations page$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.on_integrations_page?).to eq(true)
end

And(/^I click on the Get Started button on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  intMan.get_started_click
end

And(/^I should see the Basic integration settings modal$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.basic_integration_modal_present?).to eq(true)
end

And(/^I enter '[^']*' in the API key field on the basic integration modal$/) do |field|
  intMan = Management::EdhIntegration.new(:api_key=>field)
  intMan.create
end

And(/^I enter '[^']*' in the notifications area on the basic integration modal$/) do |field|
  intMan = Management::EdhIntegration.new(:notifications=>field)
  intMan.create
end

And(/^I click Save on the basic integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.basic_integration_save_click
end

Then(/^I should see '[^']*' on the integrations page$/) do |text|
  intMan = Management::EdhIntegration.new
  expect(intMan.integrations_page_content_include? text).to eq(true)
end

And(/^I click on the Map Campaigns button on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  intMan.map_campaigns_click
end

Then(/^I should see the EDH campaign mappings modal$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.campaign_mappings_modal_present?).to eq(true)
end

And(/^I set the default eTapestry Fund to '[^']*' on the EDH campaign mappings modal$/) do |selection|
  intMan = Management::EdhIntegration.new
  intMan.default_fund_select selection
end

And(/^I set the default eTapestry Campaign to '[^']*' on the EDH campaign mappings modal$/) do |selection|
  intMan = Management::EdhIntegration.new
  intMan.default_campaign_select selection
end

And(/^I set the default eTapestry Approach to '' on the EDH campaign mappings modal$/) do |selection|
  intMan = Management::EdhIntegration.new
  intMan.default_approach_select selection
end

And(/^I click Save on the EDH campaign mappings modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.campaign_mappings_save_click
end

And(/^I click on the Select Historical Data button on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  intMan.select_historical_data_click
end

Then(/^I should see the EDH historical data import modal$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.historical_data_modal_present?).to eq(true)
end

And(/^I click All historical data on the EDH historical data import modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.all_historical_data_set
end

And(/^I click Save on the EDH historical data import modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.historical_data_save_click
end

Then(/^I should see the Import button on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.import_button_present?).to eq(true)
end
