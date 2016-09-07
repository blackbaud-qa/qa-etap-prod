When(/^I click choose columns$/) do
  landing = Account::Journal.new
  landing.journal_choose_columns_click
end

And(/^I mark the checkbox for tribute$/) do
   landing = Account::Journal.new
  landing.journal_column_picker_tribute_click
end

And(/^I click on apply changes$/) do
   journal = Account::Journal.new
   journal.journal_apply_changes_click
end

Then(/^I should see tribute column on Journal Page$/) do
  landing = Account::Journal.new
  expect(landing.confirm_tribute_column).to eq(true)
end

And(/^I should see 'Cindy Grant' in tribute column$/) do
  landing = Account::Journal.new
  expect(landing.confirm_account_name).to eq(true)
end

When(/^I click on 'Cindy Grant' in tribute column$/) do
  landing = Account::Journal.new
  landing.tribute_account_name_click
end

Then(/^I should taken to 'Cindy Grant' Account Home Page$/) do
  landing = Account::Journal.new
  expect(landing.confirm_account_home_page).to eq(true)
end


And (/^I click on Journal$/) do
  landing = Account::Journal.new
  landing.journal_click
end

And (/^I click on 'Raymond Barnes' in original account column$/)do
  landing = Account::Journal.new
  landing.original_account_name_click
end

Then (/^I should taken to 'Raymond Barnes' Account Home page$/)do
  landing = Account::Journal.new
  expect(landing.confirm_original_account_home).to eq(true)
end
