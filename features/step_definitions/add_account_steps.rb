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