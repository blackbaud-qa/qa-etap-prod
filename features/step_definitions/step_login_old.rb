Given(/^I navigate to FullhouseOLD$/) do
  @b.goto "https://etap-cdev-fh.blackbaudhosting.com/prod/"
end

When(/^I login into eTapOLD$/) do
  @b.text_field(:name => 'j_username').set 'AutomationBot'
  @b.text_field(:name => 'j_password').set 'spicypancakes1'
  @b.button(:id => 'loginSubmit').click
end

When(/^I am logged into eTapOLD$/) do
  @b.text.include?'Logout'
end

When(/^I log out of eTapOLD$/) do
  content = @b.iframe(:name, "content")
  content.link(:text, 'Logout').click
end

Then(/^I should be logged out of eTapOLD$/) do
  @b.button(:id => 'loginSubmit').exists?
end
