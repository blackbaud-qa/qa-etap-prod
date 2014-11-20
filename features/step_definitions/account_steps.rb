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

When(/^I click on Relationships from the Role Icon drop down$/) do
  search = Account::Search.new
  search.role_icon_click
  search.role_menu_relationships_click
end

When(/^I click on Journal from the Role Icon drop down$/) do
  search = Account::Search.new
  search.role_icon_click
  search.role_menu_journal_click
end

When(/^I click on Other from the Role Icon drop down$/) do
  search = Account::Search.new
  search.role_icon_click
  search.role_menu_other_click
end

When(/^I click on Defined Fields from the Role Icon drop down$/) do
  search = Account::Search.new
  search.role_icon_click
  search.role_menu_defined_fields_click
end


Then (/^I should be taken to '([^']*)' Personas page$/) do |name|
  account = Account::Profile.new
  expect(account.constit_name_exists? name).to eq(true)
  expect(account.on_personas_page?).to eq(true)
end

Then (/^I should be taken to '([^']*)' Relationships page$/) do |name|
  account = Account::Profile.new
  expect(account.constit_name_exists? name).to eq(true)
  expect(account.on_relationships_page?).to eq(true)
end

Then (/^I should be taken to '([^']*)' Journal page$/) do |name|
  account = Account::Profile.new
  expect(account.constit_name_exists? name).to eq(true)
  expect(account.on_journal_page?).to eq(true)
end

Then (/^I should be taken to '([^']*)' Other page$/) do |name|
  account = Account::Profile.new
  expect(account.constit_name_exists? name).to eq(true)
  expect(account.on_other_page?).to eq(true)
end

Then (/^I should be taken to '([^']*)' Defined Fields page$/) do |name|
  account = Account::Profile.new
  expect(account.constit_name_exists? name).to eq(true)
  expect(account.on_defined_fields_page?).to eq(true)
end