And (/^I click Mass Update/) do
  mass = Admin::Massupdates.new
  mass.mass_update_link_click
end

And (/^I click Update Existing Accounts on the Mass Update page/) do
  mass = Admin::Massupdates.new
  mass.update_existing_accounts_link_click
end

And (/^I set the query category to '([^']*)'/) do |value|
  mass = Admin::Massupdates.new
  mass.select_query_category value
end

And (/^I set the query to '([^']*)'/) do |value|
  mass = Admin::Massupdates.new
  mass.select_the_query value
end

And (/^the '([^']*)' single select field should be set to '([^']*)'/) do |udf,value|
  mass = Admin::Massupdates.new
  mass.click_udf(udf)
  mass.set_udf_value(udf, value)
end

And (/^I click Next on the Mass Update page/) do
  mass = Admin::Massupdates.new
  mass.mass_update_next_click
end

And (/^I should see the message Accounts to Update: '([^']*)' on the mass update page/) do |number|
  mass = Admin::Massupdates.new
  expect(mass.mass_update_number_of_accounts? number).to eq(true)
end

And (/^I should see the following message '([^']*)' as a result of this mass update/) do |message|
  mass = Admin::Massupdates.new
  expect(mass.mass_update_completed_successfully? message).to eq(true)
end

And (/^I click on the '([^']*)' account/) do |name|
  mass = Admin::Massupdates.new
  mass.constituent_account_click(name)
end

And (/^I click on the '([^']*)' page of the constituent record/) do |page|
  mass = Admin::Massupdates.new
  mass.constituent_page_click(page)
end

And (/^I set the Update Type to Remove/) do
  mass = Admin::Massupdates.new
  mass.select_remove_option
end

And (/^I click on the '([^']*)' category/) do |category|
  mass = Admin::Massupdates.new
  mass.click_on_query_category(category)
end

And (/^I click on the '([^']*)' query/) do |query|
  mass = Admin::Massupdates.new
  mass.click_on_query(query)
end

Then (/^I should see the message '([^']*)' on the query preview screen/) do |message|
  mass = Admin::Massupdates.new
  expect(mass.query_preview_screen? message).to eq(true)
end