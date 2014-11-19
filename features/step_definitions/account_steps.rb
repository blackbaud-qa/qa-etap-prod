When(/^I click on Home from the Role Icon drop down$/) do
  search = Account::Search.new
  search.role_icon_click
  search.role_menu_home_click

end

When(/^I click on Personas from the Role Icon drop down$/) do
  search = Account::Search.new
  search.role_icon_click
  search.role_menu_personas_click

end

Then (/^I should be taken to '([^']*)' Personas page$/) do |name|
  account = Account::Profile.new
  expect(account.constit_name_exists? name).to eq(true)
  expect(account.on_personas_page?).to eq(true)

end