
When(/^I click Home on the main menu$/) do
  landing = Admin::Landing.new
  landing.home_click
end


When(/^I click on the Home drop down$/) do
  landing = Admin::Landing.new
  landing.home_dropdown_click
end

When(/^I click on Go to Home on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_go_home_click

end

When(/^I click on Manage User Preferences on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_manage_preferences_click
end

When(/^I click on Find an Account on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_find_account_click
end

When(/^I click on Add a Gift or Pledge on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_add_gift_click
end

When(/^I click on Manage Communications on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_manage_comms_click
end

When(/^I click on Learn Best Practices on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_best_practices_click
end

When(/^I click on Give Feedback on Idea Bank on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_give_feedback_click
end

When(/^I click on Help on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_help_click
end

When(/^I click on Open My Scheduled Items on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_scheduled_items_click
end

When(/^I click on Open My Drop Box on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_dropbox_click
end

When(/^I click on Getting Started Wizard on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_wizard_click
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

#Home DropDown options
Then(/^I should be taken to User Preferences$/) do
  prefs = Admin::Userprefs.new
  expect(prefs.on_user_prefs_page?).to eq(true)
end

Then(/^I should be taken to My Scheduled Items$/) do
  items = Reports::Scheduled.new
  expect(items.on_scheduled_items_page?).to eq(true)
end

Then(/^I should be taken to Drop Box$/) do
  dbox = Admin::Dropbox.new
  expect(dbox.on_dropbox_page?).to eq(true)
end

Then(/^I should be taken to Getting Started Wizard$/) do
  wizard = Admin::Getstartedwizard.new
  expect(wizard.on_wizard_page?).to eq(true)
end