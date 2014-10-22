Given(/^I navigate to Fullhouse$/) do
  LoginPage::Login.new.login_nav
end

When(/^I login into eTap$/) do
  LoginPage::Login.new(:username=>'AutomationBot', :password=>'spicypancakes1').log_in
end

When(/^I am logged into eTap$/) do
  #may not need this line if previous section logged in
  page = LoginPage::Login.new.log_in
  #assert_equal true, page.logged_in?
  LoginPage::Login.new.logged_in?
end

When(/^I log out of eTap$/) do
  #may not need this line if previous line logged in
  page = LoginPage::Login.new
  page.log_out
end

Then(/^I should be logged out of eTap$/) do
  #may not need this line if previous line logged in
  page =  LoginPage::Login.new
  page.log_out
  page.logged_out?
end
