Given(/^I navigate to Fullhouse$/) do
  @b.goto "https://etap-cdev-fh.blackbaudhosting.com/prod/"
end

When(/^I login into eTap$/) do
  @b.text_field(:name => 'j_username').set 'Automation Bot'
  @b.text_field(:name => 'j_password').set 'spicypancakes1'
  @b.button(:id => 'loginSubmit').click
end

Then(/^I should logout of eTap$/) do
  pending # express the regexp above with the code you wish you had
end
