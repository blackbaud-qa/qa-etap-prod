And (/^I click on Add Account on the find account screen/) do
  accounts = Account::AddAccount.new()
  accounts.find_screen_add_account_click
end

And (/^I set Name to '([^']*)' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_classic_name => name)
  accounts.create
end

And (/^I set Sort Name to 'Doe, John' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_classic_sort_name => name)
  accounts.create
end


And (/^I set Address Lines to '501 N Pennsylvania Parkway' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_classic_address_lines => name)
  accounts.create
end