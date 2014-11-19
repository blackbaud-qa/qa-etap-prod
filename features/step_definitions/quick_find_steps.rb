When(/^I click Accounts$/) do
  landing = Admin::Landing.new
  landing.accounts_click

end

When(/^I type '([^']*)' into the search field$/) do |name|

  #pending # express the regexp above with the code you wish you had
  #create new mvc for serach page-- done
  #locate serach field
  #populate with name
  search = Account::Search.new(:search_field=>name)
  search.create

end

When(/^I press Enter on the keyboard$/) do
  #pending # express the regexp above with the code you wish you had
  search = Account::Search.new
  #search.create
  search.find_click
end

Then(/^'([^']*)' should show in the results$/) do |name|
 # pending # express the regexp above with the code you wish you had
  #check page for specified user
  search = Account::Search.new
  expect(search.account_name_exists? name).to eq(true)
end