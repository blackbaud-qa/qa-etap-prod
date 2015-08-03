And (/^I click Mass Update/) do
  mass = Admin::Massupdates.new
  mass.mass_update_link_click
end

When (/^I clear old data from the Mass Update query/) do
  step "I navigate to the New Journal Contacts query"
  mass = Admin::Massupdates.new
  while (mass.contact_journal_entry_exists?)
    step "I click Contact on the Query Preview page"
    step "I click Delete on the contact page"
    step "I should close the javascript popup"
    step "I navigate to the New Journal Contacts query"
  end
end

And (/^I navigate to the New Journal Contacts query/) do
  step "I click Queries on the main menu"
  step "I click on the 'Mass Update' category"
  step "I click on the 'New Journal Contacts' query"
  step "I click Save And 'Preview'"
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
  sleep 3
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

And (/^I click Create New Contacts on the Mass Update page/) do
  mass = Admin::Massupdates.new
  mass.click_create_new_contacts
end

And (/^I mark the Final checkbox on the Mass Add Journal Contacts page/) do
  mass = Admin::Massupdates.new
  mass.mark_contact_as_final
end

And(/^I set the date to Today on the Mass Add Journal Contacts page/) do
  mass = Admin::Massupdates.new(:new_contact_date => Date.today.strftime('%x'))
  mass.create
end

And (/^I set the Contact Method to '([^']*)'/) do |value|
  mass = Admin::Massupdates.new
  mass.select_contact_method value
end

And (/^I set the Subject to '([^']*)' on the Mass Add Journal Contacts page/) do |subject|
  mass = Admin::Massupdates.new(:set_contact_journal_subject => subject)
  mass.create
end

And(/^I set the Note to '([^']*)' on the Mass Add Journal Contacts page/) do |note|
  mass = Admin::Massupdates.new(:set_contact_journal_note => note)
  mass.create
end

And (/^I click Contact on the Query Preview page/) do
  mass = Admin::Massupdates.new
  mass.click_on_contact_journal_entry
end

And (/^I should see the Subject set to '([^']*)'/) do |value|
  mass = Admin::Massupdates.new
  expect(mass.contact_subject).to eq(value)
end

And (/^I should see the Note set to '([^']*)'/) do |value|
  mass = Admin::Massupdates.new
  expect(mass.contact_note).to eq(value)
end

And (/^I click Delete on the contact page/) do
  mass = Admin::Massupdates.new
  mass.contact_delete_click
  step "I should close the javascript popup"
end

And (/^I should see zero results on the query preview screen/) do
  mass = Admin::Massupdates.new
  expect(mass.empty_query).to eq(false)
end

Then (/^I should see '([^']*)' on the mass update preview page/) do |message|
  mass = Admin::Massupdates.new
  expect(mass.cannot_perform_mass_update message).to eq(true)
end