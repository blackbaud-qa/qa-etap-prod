When(/^I type '([^']*)' into the search field$/) do |name|
  search = Account::Search.new(:search_field=>name)
  search.create
end

When(/^I click Find$/) do
  search = Account::Search.new
  search.find_click
end

When(/^I click Exact Match$/) do
  search = Account::Search.new
  search.exact_match_click
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

Then (/^I should be taken to '([^']*)' Home page$/) do |name|
  account = Account::Profile.new
  expect(account.constit_name_exists? name).to eq(true)
  expect(account.on_home_page?).to eq(true)

end


Then (/^the text in the search field should update to '([^']*)'$/) do |text|
  search = Account::Search.new
  expect(search.search_field_contains? text).to eq(true)
end

And (/^I click the gift box icon$/) do
  search = Account::Search.new
  search.gift_box_icon_click
end

Then (/^I should see the new gift and pledge page$/) do
  search = Account::Search.new
  expect(search.new_gift_and_pledge_page).to eq(true)
end

