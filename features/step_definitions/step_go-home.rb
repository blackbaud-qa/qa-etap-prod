Given(/^I logged into etapestry$/) do
  Admin::Login.new.login_nav
  page =  Admin::Login.new(:username=>'AutomationBot', :password=>'spicypancakes1')
  page.create
  page.log_in
end

When(/^I am on the landing page$/) do
  landing = Admin::Landing.new
  landing.logged_in?
end

When(/^I am on accounts$/) do
  landing = Admin::Landing.new
  landing.accounts
end

When(/^I click on the drop down arrow next to home$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I click on go to home$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be on the dashboard$/) do
  pending # express the regexp above with the code you wish you had
end