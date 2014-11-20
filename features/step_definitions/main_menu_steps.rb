
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
  landing.accounts_click
end

When(/^I click Communications on the main menu$/) do
  landing = Admin::Landing.new
  landing.accounts_click
end


When(/^I click Queries on the main menu$/) do
  landing = Admin::Landing.new
  landing.accounts_click
end


When(/^I click Reports on the main menu$/) do
  landing = Admin::Landing.new
  landing.accounts_click
end


When(/^I click Management on the main menu$/) do
  landing = Admin::Landing.new
  landing.accounts_click
end