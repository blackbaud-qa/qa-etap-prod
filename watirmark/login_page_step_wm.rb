Given(/^I navigate to Fullhouse$/) do
  LoginPage::Login.new.navigate
end

When(/^I login into eTap$/) do
  assert_nothing_raised {LoginPage::Login.new(:username=>'AutomationBot', :password=>'spicypancakes1').log_in}
end

When(/^I am logged into eTap$/) do
  #may not need this line if previous section logged in
  page = LoginPage::Login.new.log_in
  assert_equal true, page.logged_in?
  #LoginPage::Login.new.logged_in?
end

When(/^I log out of eTap$/) do
  #may not need this line if previous line logged in
  page = LoginPage::Login.new
  assert_nothing_raised {page.log_out}
end

Then(/^I should be logged out of eTap$/) do
  #may not need this line if previous line logged in
  page =  LoginPage::Login.new.log_out
  assert_equal true, page.logged_out?
end
