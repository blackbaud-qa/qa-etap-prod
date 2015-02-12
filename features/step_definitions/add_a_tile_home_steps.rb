Given (/I am on an account$/) do
  step "I type '/27' into the dynamic search field"
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
end