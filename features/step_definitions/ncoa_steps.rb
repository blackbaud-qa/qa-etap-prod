When(/^I click NCOA on the Management page$/) do
  ncoa = Management::Ncoa.new()
  ncoa.management_ncoa_click
end

Then(/^I should see the NCOA Settings page$/) do
  # sleep 2
  ncoa = Management::Ncoa.new()
  expect(ncoa.on_ncoa_settings_page?).to eq(true)
end

Then(/^the Category field should be set to '([^']*)' on the NCOA page$/) do |cat|
  ncoa = Management::Ncoa.new()
  expect(ncoa.category_value_selected? cat).to eq(true)
end

And(/^the Query field should be set to '([^']*)' on the NCOA page$/) do |value|
  ncoa = Management::Ncoa.new()
  expect(ncoa.query_value_selected? value).to eq(true)
end

And(/^the Date field should be set to tomorrow on the NCOA page$/) do
  ncoa = Management::Ncoa.new()
  expect(ncoa.get_date_value).to eq(Date.tomorrow.strftime('%x'))
end

And(/^the Personas field should be set to Primary Personas on the NCOA page$/) do
  ncoa = Management::Ncoa.new()
  expect(ncoa.primary_personas_set?).to eq(true)
end

And(/^the Formatting field should be set to All Return Addresses on the NCOA page$/) do
  ncoa = Management::Ncoa.new()
  expect(ncoa.reformat_all_addresses_set?).to eq(true)
end

And(/^the Email Address field should be set to '([^']*)' on the NCOA page$/) do |value|
  ncoa = Management::Ncoa.new()
  expect(ncoa.get_email_value).to eq(value)
end

And(/^I select '([^']*)' for the Category field on the NCOA page$/) do |value|
  ncoa = Management::Ncoa.new()
  ncoa.category_value_select value
end

And(/^I select '([^']*)' for the Query field on the NCOA page$/) do |value|
  ncoa = Management::Ncoa.new()
  ncoa.query_value_select value
end

And(/^I click Edit the Selected Query on the NCOA page$/) do
  ncoa = Management::Ncoa.new()
  ncoa.edit_query_click
end

Then(/^I should be taken to the edit query page$/) do
  query = Queries::Createquerycategory.new
  expect(query.on_edit_query_page?).to eq(true)
end

And(/^I should reset the query name to '([^']*)' on the NCOA page$/) do |name|
  step "I click Edit the Selected Query on the NCOA page"
  step "I set the Name to '"+name+"' on the Create a New Query page"
  step "I click save on the Edit Query Definition page"
end

And(/^I click Create a New Query on the NCOA page$/) do
  ncoa = Management::Ncoa.new()
  ncoa.create_query_click
end

And(/^I delete the '([^']*)' query for the next run$/) do |name|
  step "I click Queries on the main menu"
  step "I click on the 'Base' category"
  step "I click delete below the '"+name+"' query on the Create a New Query page"
  step "I click Yes to permanently delete the item"
end

And(/^I click the calendar icon on the NCOA page$/) do
  ncoa = Management::Ncoa.new()
  ncoa.date_calendar_click
end

Then(/^the calendar should appear on the NCOA page$/) do
  ncoa = Management::Ncoa.new()
  expect(ncoa.date_calendar_displayed?).to eq(true)
end

And(/^I click Today on the calendar on the NCOA page$/) do
  ncoa = Management::Ncoa.new()
  ncoa.date_calendar_today_click
end

Then(/^the date field should be populated with Today$/) do
  ncoa = Management::Ncoa.new()
  expect(ncoa.get_date_value).to eq(Date.today.strftime('%x'))
end

And(/^I set '([^']*)' for the Date field on the NCOA page$/) do |date|
  ncoa = Management::Ncoa.new(:ncoa_settings_date=>date)
  ncoa.create
end

And(/^I click Schedule on the NCOA page$/) do
  ncoa = Management::Ncoa.new()
  ncoa.schedule_click
end

And(/^I click Schedule to see the error on the NCOA page$/) do
  ncoa = Management::Ncoa.new()
  begin
    ncoa.schedule_click
  rescue
    #expected error, fall through
  end
end

And(/^I set '([^']*)' for the Email field on the NCOA page$/) do |email|
  ncoa = Management::Ncoa.new(:ncoa_settings_email=>email)
  ncoa.create
end

And(/^I clear the Category field on the NCOA page$/) do
  ncoa = Management::Ncoa.new()
  ncoa.category_value_clear
end

And(/^I clear the Query field on the NCOA page$/) do
  ncoa = Management::Ncoa.new()
  ncoa.query_value_clear
end

And(/^I click the USPS Address Standardization page$/) do
  ncoa = Management::Ncoa.new()
  ncoa.usps_standards_page_click
end

And(/^I should be taken to the USPS page$/) do
  ncoa = Management::Ncoa.new()
  expect(ncoa.on_usps_standards_page?).to eq(true)
end