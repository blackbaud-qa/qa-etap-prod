When(/^I click Accounts$/) do
  landing = Admin::Landing.new
  landing.accounts_click
end

When(/^I type '([^']*)' into the search field$/) do |name|
  search = Account::Search.new(:search_field=>name)
  search.create
end

When(/^I press Enter on the keyboard$/) do
  search = Account::Search.new
  search.press_enter
end

When(/^I click the Find button$/) do
  search = Account::Search.new
  serach.find_click
end

Then(/^'([^']*)' should show in the results$/) do |name|
  search = Account::Search.new
  expect(search.account_name_exists? name).to eq(true)
end