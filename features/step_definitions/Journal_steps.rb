When(/^I click choose columns$/) do
  landing = Account::Journal.new
  landing.journal_choose_columns_click
end

When(/^I click on '([^']*)' in soft credit column$/) do |value|
  landing = Account::Journal.new
  landing.account_name_click value
end

When(/^I click on '([^']*)' in tribute column$/) do | value|
  landing = Account::Journal.new
  landing.account_name_click value
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


And(/^I should see '([^']*)' in tribute column$/) do |value|
  landing = Account::Journal.new
  expect(landing.account_name value ).to eq(true)
end


And (/^I click on '([^']*)' in original account column$/) do |value|
  landing = Account::Journal.new
  landing.account_name_click value
end


And(/^I mark the checkbox for soft credit$/) do
  landing = Account::Journal.new
  landing.journal_soft_credit_click
end


And(/^I should see '([^']*)' in soft credit column$/) do |value|
  landing = Account::Journal.new
  expect(landing.account_name value ).to eq(true)
end


Then(/^I should see tribute column on Journal Page$/) do
  landing = Account::Journal.new
  expect(landing.confirm_tribute_column).to eq(true)
end


Then(/^I should see soft credit column on Journal Page$/) do
  landing = Account::Journal.new
  expect(landing.confirm_soft_credit_column).to eq(true)
end

Then (/^I should see last modified date on Journal Page$/)do
   landing = Account::Journal.new
   expect(landing.confirm_modified_date_column).to eq(true)
end


And(/^I should see '([^']*)' listed in the last modified date column$/) do |value|
  sleep 2
  landing = Account::Journal.new
  expect(landing.confirm_last_modified_date value).to eq(true)
 end