Given(/^I navigate to Fullhouse$/) do
  @b.goto "https://etap-cdev-fh.blackbaudhosting.com/prod/"
end

When(/^I login into eTap$/) do
  @b.text_field(:name => 'j_username').set 'AutomationBot'
  @b.text_field(:name => 'j_password').set 'spicypancakes1'
  @b.button(:id => 'loginSubmit').click
end

When(/^I am logged into eTap$/) do
  @b.text.include?'Logout'
end

When(/^I log out of eTap$/) do
  content = @b.iframe(:name, "content")
  content.link(:text, 'Logout').click
end

Then(/^I should be logged out of eTap$/) do
  @b.button(:id => 'loginSubmit').exists?
end
