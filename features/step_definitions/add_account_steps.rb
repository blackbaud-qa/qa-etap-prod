And (/^I click on Add Account on the find account screen/) do
  accounts = Account::AddAccount.new()
  accounts.find_screen_add_account_click
end

And (/^I set Name to '([^']*)' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_classic_name => name)
  accounts.create
end

And (/^I set Title to '([^']*)' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_title => name)
  accounts.create
end

And (/^I set First Name to '([^']*)' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_first_name => name)
  accounts.create
end

And (/^I set Middle Name to '([^']*)' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_middle_name => name)
  accounts.create
end

And (/^I set Last Name to '([^']*)' on the classic add account page/) do |name|
  accounts = Account::AddAccount.new(:new_account_last_name => name)
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

And (/^I click on '([^']*)' on the accounts page/) do |name|
  accounts = Account::AddAccount.new
  accounts.name_link_click name
end

And (/^I click on the account settings page on the accounts page/) do
  accounts = Account::AddAccount.new
  accounts.other_link_click
end

And (/^I click Delete Role on the Account Settings page/) do
  accounts = Account::AddAccount.new
  accounts.delete_role_button_click
end

And (/^I click Yes on the Account Settings page/) do
  accounts = Account::AddAccount.new
  accounts.yes_button_click
end

And (/^I should be taken to the Persona page '([^']*)''s account/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.new_account_persona).to eq(name)
end

And (/^I set the UDF '([^']*)' dropdown to '([^']*)' on the classic add account page/) do |udf, value|
  accounts = Account::AddAccount.new
  accounts.click_udf(udf)
  accounts.set_udf_dropdown_value(udf, value)
end

And (/^I set the UDF '([^']*)' to '([^']*)' on the classic add account page/) do |udf, value|
  accounts = Account::AddAccount.new
  accounts.click_udf(udf)
  accounts.set_udf_value(udf, value)
end

Then (/^the Address Lines should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_address_lines).to eq(name)
end

Then (/^the City should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_city).to eq(name)
end

Then (/^the State should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_state).to eq(name)
end

Then (/^the Postal Code should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_postal_code).to eq(name)
end

Then (/^the County should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_county).to eq(name)
end

Then (/^the Voice should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_voice).to eq(name)
end

Then (/^the Email should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_email).to eq(name)
end

Then (/^the Web Page should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_web_page).to eq(name)
end

Then (/^the Note should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_note).to eq(name)
end

Then (/^the Short Salutation should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_short_salutation).to eq(name)
end

Then (/^the Long Salutation should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_long_salutation).to eq(name)
end

Then (/^the '([^']*)' should be set to '([^']*)'/) do |udf, value|
  accounts = Account::AddAccount.new
  expect(accounts.persona_page_company(udf)).to eq(value)
end

# And (/^I set Phone to '([^']*)' on the Advanced Find screen/) do |value|
#   accounts = Account::AddAccount.new(:find_account_phone => value)
#   accounts.create
# end

And(/^I handle the duplicate report if necessary$/) do
  accounts = Account::AddAccount.new
  if(accounts.possible_duplicate_detected?)
    accounts.duplicates_continue_click
    # accounts.not_duplicates_click
    # step "I click Yes on the Account Settings page"
  end
end

And (/^I click on the USPS button/) do
  accounts = Account::AddAccount.new
  accounts.usps_button
end

And (/^I should see '([^']*)' returned as the postal code on USPS.com/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.usps_postal_code? value).to eq(true)
end

And (/^I click Personas/) do
  accounts = Account::AddAccount.new
  accounts.personas_link
end

And (/^I click on the WhitePages button/) do
  accounts = Account::AddAccount.new
  accounts.whitepages_button
end

And (/^I should see '([^']*)' sent over to WhitePages.com/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.whitepages_url? value).to eq(true)
end

Then (/^the Email field should be set to '([^']*)'/) do |name|
  accounts = Account::AddAccount.new
  name = name.gsub("\\n", "\n")
  expect(accounts.persona_page_email).to eq(name)
end

And(/^I set Email field to$/) do |string|
  accounts = Account::AddAccount.new(:multiple_emails_return => string)
  accounts.create
end

And (/^I set the Name Format to '([^']*)' on the add account page/) do |value|
  accounts = Account::AddAccount.new
  accounts.name_format_select(value)
end

And (/^I set the Title to '([^']*)' on the add account page/) do |value|
  accounts = Account::AddAccount.new
  accounts.title_select(value)
end

And (/^I set the First Name to '([^']*)' on the add account page/) do |value|
  accounts = Account::AddAccount.new(:new_names_first_name => value)
  accounts.create
end

And (/^I set the Middle Name to '([^']*)' on the add account page/) do |value|
  accounts = Account::AddAccount.new(:new_names_middle_name => value)
  accounts.create
end

And (/^I set the Last Name to '([^']*)' on the add account page/) do |value|
  accounts = Account::AddAccount.new(:new_names_last_name => value)
  accounts.create
end

And (/^I set the Suffix to '([^']*)' on the add account page/) do |value|
  accounts = Account::AddAccount.new(:new_names_suffix => value)
  accounts.create
end

And(/^I click Save And '([^']*)' on the add account page/) do |value|
  accounts = Account::AddAccount.new
  accounts.set_save_and_account_page(value)
  accounts.click_save_and_account_page
end

And(/^I click the edit icon next to '([^']*)' on the add account page/) do |value|
  accounts = Account::AddAccount.new
  accounts.edit_salutation(value)
end

And(/^I set the Short Salutation to '([^']*)' on the add account page/) do |value|
  accounts = Account::AddAccount.new(:new_names_short_salutation => value)
  accounts.create
end

And (/^the Envelope Salutation should be set to '([^']*)'/) do |value|
  accounts = Account::AddAccount.new
  # expect(accounts.envelope_salutation value).to eq(true)
  expect(accounts.envelope_salutation).to eq(value)
end

And (/^the Name Format value should be set to '([^']*)'/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.name_format_existing_account).to eq(value)
end

And (/^the Title should be set to '([^']*)'/) do |value|
  accounts = Account::AddAccount.new
  # expect(accounts.title_existing_account value).to eq(true)
  expect(accounts.title_existing_account).to eq(value)
end

And (/^the First Name should be set to '([^']*)'/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.first_name_existing_account).to eq(value)
end

And (/^the Middle Name should be set to '([^']*)'/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.middle_name_existing_account).to eq(value)
end

And (/^the Last Name should be set to '([^']*)'/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.last_name_existing_account).to eq(value)
end

And (/^the Suffix should be set to '([^']*)'/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.suffix_existing_account).to eq(value)
end

And (/^the Account Name should be set to '([^']*)'/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.account_name_existing_account).to eq(value)
end

And (/^the Sort Name should be set to '([^']*)'/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.sort_name_existing_account).to eq(value)
end

And (/^the Recognition Name should be set to '([^']*)'/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.recognition_name_existing_account value).to eq(true)
end

And (/^the Recognition Type should be set to '([^']*)'/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.recognition_type_existing_account value).to eq(true)
end
And(/^I click User Defined Fields on the management menu/) do
  accounts = Account::AddAccount.new
  accounts.management_user_defined_fields
end

And(/^I click the Base UDF category on the Edit User Defined Fields page/) do
  accounts = Account::AddAccount.new
  accounts.udf_category
end

And(/^I click Account Type on the UDF page/) do
  accounts = Account::AddAccount.new
  accounts.account_type_udf
end

And(/^I click Field Attributes/) do
  accounts = Account::AddAccount.new
  accounts.field_attributes
end

And(/^I click would you like to make this field required/) do
  accounts = Account::AddAccount.new
  accounts.require_udf
end

And(/^I click Save and Finish on the UDF page/) do
  accounts = Account::AddAccount.new
  accounts.save_and_finish_udf_page
end

Then(/^I should see a required icon by Account Type/) do
  accounts = Account::AddAccount.new
  expect(accounts.required_icon).to eq(true)
end
