When(/^I click Accounts$/) do
  landing = Admin::Landing.new
  landing.accounts_click
end

And(/^I click Advanced Find$/) do
  search = Account::AdvancedSearch.new
  search.advanced_click
end

And(/^I type '([^']*)' into the Name field$/) do |name|
  search = Account::AdvancedSearch.new(:search_field=>name)
  search.clear_email_field
  search.create
end

Then(/^'([^']*)' should show in the advanced find name results$/) do |name|
  search = Account::AdvancedSearch.new
  expect(search.account_name_exists? name).to eq(true)
end
#
And(/^I type '([^']*)' into the Email field$/) do |email|
  search = Account::AdvancedSearch.new(:email_field=>email)
  search.clear_name_field
  search.create
end
