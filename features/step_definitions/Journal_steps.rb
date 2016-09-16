When(/^I click choose columns$/) do
  landing = Account::Journal.new
  landing.journal_choose_columns_click
end

When(/^I click on 'Anne Hatch' in soft credit column$/) do
  landing = Account::Journal.new
  landing.soft_credit_account_name_click
end

When(/^I click on 'Cindy Grant' in tribute column$/) do
  landing = Account::Journal.new
  landing.tribute_account_name_click
end

And(/^I mark the checkbox for tribute$/) do
   landing = Account::Journal.new
  landing.journal_column_picker_tribute
end

And(/^I mark the checkbox for last modified date$/) do
  landing = Account::Journal.new
  landing.journal_checkbox_modified_date
end


And(/^I click on apply changes$/) do
   journal = Account::Journal.new
   journal.journal_apply_changes_click
end


And(/^I should see 'Cindy Grant' in tribute column$/) do
  landing = Account::Journal.new
  expect(landing.confirm_account_name).to eq(true)
end


And (/^I click on 'Raymond Barnes' in original account column$/)do
  landing = Account::Journal.new
  landing.original_account_name_click
end


And(/^I mark the checkbox for soft credit$/) do
  landing = Account::Journal.new
  landing.journal_soft_credit_click
end


And(/^I should see 'Anne Hatch' in soft credit column$/) do
  landing = Account::Journal.new
  expect(landing.confirm_account_name_in_soft_credit_column).to eq(true)
end


Then(/^I should see tribute column on Journal Page$/) do
  landing = Account::Journal.new
  expect(landing.confirm_tribute_column).to eq(true)
end

Then (/^I should taken to 'Raymond Barnes' Account Home page$/)do
  landing = Account::Journal.new
  expect(landing.confirm_original_account_home).to eq(true)
end


Then(/^I should see soft credit column on Journal Page$/) do
  landing = Account::Journal.new
  expect(landing.confirm_soft_credit_column).to eq(true)
end

Then (/^I should see last modified date on Journal Page$/)do
   landing = Account::Journal.new
   expect(landing.confirm_modified_date_column).to eq(true)
end

Then(/^I should taken to 'Cindy Grant' Account Home Page$/) do
  landing = Account::Journal.new
  expect(landing.confirm_account_home_page).to eq(true)
end


And(/^I should see '([^']*)' listed in the last modified date column$/) do |value|
  landing = Account::Journal.new
  expect(landing.confirm_last_modified_date value).to eq(true)
 end