
When(/^I click Home on the main menu$/) do
  landing = Admin::Landing.new
  landing.home_click
end

When(/^I click Accounts on the main menu$/) do
  landing = Admin::Landing.new
  landing.accounts_click
end


When(/^I click Giving on the main menu$/) do
  landing = Admin::Landing.new
  landing.giving_click
end

When(/^I click Communications on the main menu$/) do
  landing = Admin::Landing.new
  landing.communications_click
end


When(/^I click Queries on the main menu$/) do
  landing = Admin::Landing.new
  landing.queries_click
end


When(/^I click Reports on the main menu$/) do
  landing = Admin::Landing.new
  landing.reports_click
end


When(/^I click Management on the main menu$/) do
  landing = Admin::Landing.new
  landing.management_click
end



Then(/^I should be taken to Home$/) do
  landing = Admin::Landing.new
  expect(landing.on_home_page?).to eq(true)
end

Then(/^I should be taken to Find Account$/) do
  landing = Admin::Landing.new
  expect(landing.on_accounts_page?).to eq(true)
end

Then(/^I should be taken to Quick Gift Entry$/) do
  landing = Admin::Landing.new
  expect(landing.on_giving_page?).to eq(true)
end

Then(/^I should be taken to Communication Categories$/) do
  landing = Admin::Landing.new
  expect(landing.on_communications_page?).to eq(true)
end

Then(/^I should be taken to Query Categories$/) do
  landing = Admin::Landing.new
  expect(landing.on_queries_page?).to eq(true)
end

Then(/^I should be taken to Report Categories$/) do
  landing = Admin::Landing.new
  expect(landing.on_reports_page?).to eq(true)
end

Then(/^I should be taken to Management$/) do
  landing = Admin::Landing.new
  expect(landing.on_management_page?).to eq(true)
end