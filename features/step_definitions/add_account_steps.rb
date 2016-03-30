And (/^I click on Add Account on the find account screen/) do
  landing = Admin::Landing.new
  landing.accounts_dd_add_account_click
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
  sleep 2
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

And(/^I set the UDF '([^']*)' dropdown to '([^']*)' in the UDF section on the classic add account page$/) do |udf, value|
  accounts = Account::AddAccount.new
  #accounts.click_udf_section(udf)
  if accounts.main_udf_section_is_collapsed?
    accounts.click_main_udf_section
  end
  # accounts.set_udf_section_dropdown_value(udf, value)
  accounts.click_udf(udf)
  accounts.set_udf_dropdown_value(udf, value)
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

And(/^I set the Long Salutation to '([^']*)' on the add account page/) do |value|
  accounts = Account::AddAccount.new(:new_names_long_salutation => value)
  accounts.create
end

And(/^I set the Envelope Salutation to '([^']*)' on the add account page/) do |value|
  accounts = Account::AddAccount.new(:new_names_envelope_salutation => value)
  accounts.create
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

And (/^the Recognition Name should be set to '([^']*)'/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.recognition_name_existing_account value).to eq(true)
end

And (/^the Recognition Type should be set to '([^']*)'/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.recognition_type_existing_account value).to eq(true)
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
  sleep 3
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

And(/^I reset the required attribute for the next run$/) do
  step "I click Management on the main menu"
  step "I click on User Defined Fields on the management menu"
  step "I click the Base UDF category on the Edit User Defined Fields page"
  step "I click Account Type on the UDF page"
  step "I click Field Attributes"
  accounts = Account::AddAccount.new
  accounts.unrequire_udf
  step "I click Save and Finish on the UDF page"

end

Then(/^I should see a required icon by Account Type/) do
  accounts = Account::AddAccount.new
  expect(accounts.required_icon).to eq(true)
end

And (/^I set the Name Format to '([^']*)' on the add account page/) do |value|
  accounts = Account::AddAccount.new
  accounts.name_format_select(value)
end

And (/^I set the Title to '([^']*)' on the add account page/) do |value|
  accounts = Account::AddAccount.new
  accounts.title_select(value)
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

And (/^the Sort Name should be set to '([^']*)'/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.sort_name_existing_account).to eq(value)
end

And (/^I set the Sort Name to '([^']*)' on the add account page/) do |value|
  accounts = Account::AddAccount.new(:new_names_sort_name => value)
  accounts.create
end

And (/^I set the Account Name to '([^']*)' on the add account page/) do |value|
  accounts = Account::AddAccount.new(:new_names_account_name => value)
  accounts.create
end

And (/^I click Change Country on the Personas page/) do
  accounts = Account::AddAccount.new
  accounts.change_country_link
end

And (/I set the country to '([^']*)' in the Change Country modal on the Personas page/) do |value|
  accounts = Account::AddAccount.new
  accounts.set_country_persona_modal value
end

And (/^I click Continue in the Change Country modal on the Personas page/) do
  accounts = Account::AddAccount.new
  accounts.save_country_selection
end

And (/^I set Suburb to '([^']*)' on the add account page/) do |value|
  accounts = Account::AddAccount.new(:persona_page_suburb => value)
  accounts.create
end

And (/^I click Merge Role on the account settings page/) do
  accounts = Account::AddAccount.new
  accounts.merge_role
end

And (/^I click Change All to Replace on the Merge Role page/) do
  accounts = Account::AddAccount.new
  accounts.change_all_replace_link
end

And (/^the Suburb should be set to '([^']*)'/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.suburb_existing_account_value).to eq(value)
end

Then(/^I should be taken to the Find Account page/) do
  sleep 5
  accounts= Account::AddAccount.new
  expect(accounts.find_account_page).to eq(true)
end

And (/^I set Street Name to '([^']*)' on the add account page/) do |value|
  accounts = Account::AddAccount.new(:persona_page_street_name => value)
  accounts.create
end

And (/^I set Building Number to '([^']*)' on the add account page/) do |value|
  accounts = Account::AddAccount.new(:persona_page_building_number => value)
  accounts.create
end

And (/^I set Apt Number to '([^']*)' on the add account page/) do |value|
  accounts = Account::AddAccount.new(:persona_page_apt_number => value)
  accounts.create
end

And (/^the Street Name should be set to '([^']*)'/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.street_name_existing_account_value).to eq(value)
end

And (/^the Building Number should be set to '([^']*)'/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.building_number_existing_account_value).to eq(value)
end

And (/^the Apt Number should be set to '([^']*)'/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.apt_number_existing_account_value).to eq(value)
end

And (/^I select '([^']*)' in the Select a country to enable drop down/) do |value|
  sleep 3
  accounts = Account::AddAccount.new
  accounts.enable_country_persona_modal value
end

And(/^I click System Defined Fields on the management menu/) do
  sleep 1
  accounts = Account::AddAccount.new
  accounts.management_system_defined_fields
end

And(/^I click Country Codes on the system defined fields page/) do
  accounts = Account::AddAccount.new
  accounts.edit_country_codes
end

And (/^I click Enabled under the country code '([^']*)' to disable the value/) do |value|
  accounts = Account::AddAccount.new
  accounts.disable_country_code (value)
end

And(/^I click Save and Finish on the Country Codes page/) do
  accounts = Account::AddAccount.new
  accounts.save_and_finish_country_codes
end

And(/^I should be taken to the System Defined Fields page/) do
  sleep 5
  accounts= Account::AddAccount.new
  expect(accounts.system_defined_fields_page).to eq(true)
end

And (/^I click on the Tribute magnifying glass/) do
  landing = Giving::GiftPledge.new
  landing.tribute_icon_click
end

And (/^I click Add Account on the pop up find account screen/) do
  accounts = Account::AddAccount.new
  accounts.add_account_popup_click
end

And (/^I set the Middle Name to '([^']*)' on the pop up find account screen/) do |value|
  accounts = Account::AddAccount.new(:popup_add_account_middle_name => value)
  accounts.create
end

And(/^I click the edit icon next to '([^']*)' on the pop up find account screen/) do |value|
  accounts = Account::AddAccount.new
  accounts.popup_add_account_edit_salutation(value)
end

And (/^I set the Short Salutation to '([^']*)' on the pop up find account screen/) do |value|
  accounts = Account::AddAccount.new(:popup_add_account_short_sal => value)
  accounts.create
end

And (/^I set Address Lines to '([^']*)' on the pop up find account screen/) do |value|
  accounts = Account::AddAccount.new(:popup_add_account_address_lines => value)
  accounts.create
end

And (/^I set City to '([^']*)' on the pop up find account screen/) do |value|
  accounts = Account::AddAccount.new(:popup_add_account_city => value)
  accounts.create
end

And (/^I set State to '([^']*)' on the pop up find account screen/) do |value|
  accounts = Account::AddAccount.new(:popup_add_account_state => value)
  accounts.create
end

And (/^I set Postal Code to '([^']*)' on the pop up find account screen/) do |value|
  accounts = Account::AddAccount.new(:popup_add_account_postal_code => value)
  accounts.create
end

And (/^I set Email to '([^']*)' on the pop up find account screen/) do |value|
  accounts = Account::AddAccount.new(:popup_add_account_email => value)
  accounts.create
end

And (/^the Role should be set to '([^']*)'/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.account_role(value)).to eq true
end

And (/^I click on the Soft Credit magnifying glass/) do
  landing = Giving::GiftPledge.new
  landing.soft_credit_icon_click
end

And (/^I set the UDF '([^']*)' dropdown to '([^']*)' on the pop up find account screen/) do |udf, value|
  accounts = Account::AddAccount.new
  accounts.popup_add_account_click_udf(udf)
  accounts.popup_add_account_set_udf_dropdown_value(udf, value)
end

When (/^I click the Add Account button in the Find an Account modal/) do
  accounts=Account::AddAccount.new
  accounts.add_account_button
end

And (/^I set the Title to '([^']*)' in the Find an Account modal/) do |value|
  accounts = Account::AddAccount.new
  accounts.title_select_modal(value)
end

And (/^I set the First Name to '([^']*)' in the Find an Account modal/) do |value|
  accounts = Account::AddAccount.new(:tribute_first_name_field => value)
  accounts.create
end

And (/^I set the Middle Name to '([^']*)' in the Find an Account modal/) do |value|
  accounts = Account::AddAccount.new(:modal_middle_name_field => value)
  accounts.create
end

And (/^I set the Last Name to '([^']*)' in the Find an Account modal/) do |value|
  accounts = Account::AddAccount.new(:modal_last_name_field => value)
  accounts.create
end

And (/^I click Save in the Find an Account modal/) do
  accounts=Account::AddAccount.new
  accounts.save_button_modal
end

And (/^I should see '([^']*)' under Tribute Information/) do |value|
  accounts = Account::AddAccount.new
  expect(accounts.tribute_name_value).to eq(value)
end

And (/^I delete the tribute from the transaction/) do
  landing = Giving::GiftPledge.new
  landing.tribute_account_delete
end

And (/I click New Relationship in the Tasks box$/) do
  accounts = Account::AddAccount.new
  accounts.new_relationship_link
end

And (/I select the Relationship Type of '([^']*)' on the Relationships page$/) do |type|
  accounts = Account::AddAccount.new
  accounts.select_relationship_type_value (type)
end

And (/I set the related account to '([^']*)'$/) do |related_account|
  accounts = Account::AddAccount.new(:add_account_modal_search_text=>related_account)
  accounts.select_related_account_link
  accounts.create
  accounts.click_find
  accounts.popup_click_link_by_text(related_account)
end

And (/I select Primary for account 1 under Household Relationship$/) do
  accounts = Account::AddAccount.new
  accounts.select_primary
end

And (/I click on the existing Spouse relationship on the Relationships page$/) do
  accounts = Account::AddAccount.new
  accounts.existing_relationship
end

And (/I select Member for account 1 under Household Relationship$/) do
  accounts = Account::AddAccount.new
  accounts.select_member
end

And (/I click the Delete link on the Relationships page$/) do
  accounts = Account::AddAccount.new
  accounts.delete_relationship
end

And (/I click Delete in the Delete this Relationship modal$/) do
  accounts = Account::AddAccount.new
  accounts.confirm_relationship_deletion
end

Then (/I should not see a Relationship on the Relationships page$/) do
  accounts = Account::AddAccount.new
  expect(accounts.relationship_present).to eq(false)
end

