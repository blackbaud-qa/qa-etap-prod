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