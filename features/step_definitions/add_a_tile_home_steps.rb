Given (/I am on an account$/) do
  step "I type '/270' into the dynamic search field"
  step "I press Enter on the keyboard"
end

And (/I click on Select Tiles and Layout$/) do
  account = Account::Profile.new
  account.click_select_tiles_and_layout
end

And (/I click on 3 Equal Columns$/) do
  account = Account::Profile.new
  account.choose_three_equal_columns_layout
end

When (/I click Save$/) do
  account = Account::Profile.new
  account.click_save_button
end

Then (/I should see the homepage in 3 columns$/) do
  account = Account::Profile.new
  expect(account.small_columns_size).to eq(3)
end

And (/I click on Soft Credit Summary$/) do
  account = Account::Profile.new
  account.choose_soft_credit_summary
end

Then (/I should see the Soft Credit Summary tile$/) do
  account = Account::Profile.new
  expect(account.soft_credit_summary_tile_exists?).to eq(true)
end

And (/I am on the home page$/) do
  account = Account::Profile.new
  expect(account.on_home_page?).to eq(true)
  account.wait_on_tile_load
end

When(/^I click on transaction date from recent journal entries$/) do
  account = Account::Profile.new
  account.recent_journal_entry_click
end

Then(/^I should see the transaction on the journal page$/) do
  account = Account::Profile.new
  expect(account.on_trans_journal_page?).to eq(true)
end

When(/^I click on last gift on the account home page$/) do
  account = Account::Profile.new
  account.last_gift_click
end

When(/^I click on most recent year on the account five year summary table$/) do
  account = Account::Profile.new
  account.five_year_summary_recent_click
end

Then(/^I should see all the transactions for most recent year$/) do
  account = Account::Profile.new
  expect(account.viewing_current_year?).to eq(true)
end