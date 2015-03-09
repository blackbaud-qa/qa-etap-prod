And (/^I click on Add Account on the find account screen/) do
  accounts = Account::AddAccount.new()
  accounts.find_screen_add_account_click
end

And (/^I set Name to '([^']*)' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_classic_name => name)
  accounts.create
end

And (/^I set Sort Name to '([^']*)' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_classic_sort_name => name)
  accounts.create
end

And (/^I set Address Lines to '([^']*)' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_classic_address_lines => name)
  accounts.create
end

And (/^I set City to '([^']*)' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_classic_city => name)
  accounts.create
end

And (/^I set State to '([^']*)' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_classic_state => name)
  accounts.create
end

And (/^I set Postal Code to '([^']*)' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_classic_postal_code => name)
  accounts.create
end

And (/^I set County to '([^']*)' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_classic_postal_county => name)
  accounts.create
end

And (/^I set Voice to '([^']*)' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_classic_voice => name)
  accounts.create
end

And (/^I set Email to '([^']*)' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_classic_email => name)
  accounts.create
end

And (/^I set Web Page to '([^']*)' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_classic_web_page => name)
  accounts.create
end

And (/^I set Note to '([^']*)' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_classic_note => name)
  accounts.create
end

And (/^I set Short Salutation to '([^']*)' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_classic_short_salutation => name)
  accounts.create
end

And (/^I set Long Salutation to '([^']*)' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_classic_long_salutation => name)
  accounts.create
end

And (/^I click on John Doe/) do
  accounts = Account::AddAccount.new
  accounts.john_doe_link_click
end

And (/^I click on the Other page for John Doe/) do
  accounts = Account::AddAccount.new
  accounts.other_link_click
end

And (/^I click Delete Role for John Doe/) do
  accounts = Account::AddAccount.new
  accounts.delete_role_button_click
end

And (/^I click Yes for John Doe/) do
  accounts = Account::AddAccount.new
  accounts.yes_button_click
end

And (/^I should be taken to the Persona page '([^']*)''s account/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.new_account_persona).to eq(name)
end

And (/^I set the UDF '([^']*)' to '([^']*)' on the classic add account page/) do |udf, value|
  accounts = Account::AddAccount.new
  accounts.click_udf(udf)
  accounts.set_udf_value(udf, value)
end

Then (/^the Address Lines should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_address_lines).to eq(name)
end

Then (/^the City should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_city).to eq(name)
end

Then (/^the State should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_state).to eq(name)
end

Then (/^the Postal Code should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_postal_code).to eq(name)
end

Then (/^the County should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_county).to eq(name)
end

Then (/^the Voice should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_voice).to eq(name)
end

Then (/^the Email should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_email).to eq(name)
end

Then (/^the Web Page should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_web_page).to eq(name)
end

Then (/^the Note should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_note).to eq(name)
end

Then (/^the Short Salutation should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_short_salutation).to eq(name)
end

Then (/^the Long Salutation should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_long_salutation).to eq(name)
end

Then (/^the '([^']*)' should be set to '([^']*)'/) do |udf, value|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_company(udf)).to eq(value)
end

And (/^I set Phone to '([^']*)' on the Advanced Find screen/) do |value|
  accounts = Account::AddAccount.new(:find_account_phone => value)
  accounts.create
end