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

When(/^I click Find$/) do
  search = Account::Search.new
  search.find_click
end

Then(/^'([^']*)' should show in the results$/) do |name|
  search = Account::Search.new
  expect(search.account_name_exists? name).to eq(true)
end

Then(/^I should see the message: '([^']*)'$/) do |message|
  # pending # express the regexp above with the code you wish you had
  search = Account::Search.new
  expect(search.account_name_exists? message).to eq(true)

end
