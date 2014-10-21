before :each do
  @model = LoginPage::LoginModel.new
end

Given(/^I navigate to Fullhouse$/) do
  LoginPage::Login.new.create
end

When(/^I login into eTap$/) do
  page = LoginPage::Login.new(:username=>'AutomationBot', :password=>'spicypancakes1')
end

When(/^I am logged into eTap$/) do
  LoginPage::Login.new.logged_in?
end

When(/^I log out of eTap$/) do
  LoginPage::Login.new.log_out
end

Then(/^I should be logged out of eTap$/) do
  LoginPage::Login.new.logged_out?
end
