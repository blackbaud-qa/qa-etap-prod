And(/^I click Import on the Managment page$/) do
  import = Giving::Imports.new()
  import.managment_import_click
end

And(/^I click '([^']*)' on the Imports screen$/) do |cat|
  import = Giving::Imports.new()
  import.import_catgegory_click cat
end

And(/^I click New Import on the Standard eTapestry Imports screen$/) do
  import = Giving::Imports.new()
  import.new_import_click
  sleep 1
end

And(/^I set the Name to '([^']*)' on the Import screen$/) do |name|
  import = Giving::Imports.new(:new_import_name=>name)
  import.create
end

And(/^I choose the working import file for names on the Import screen$/) do
  import = Giving::Imports.new()
  import.new_import_choose_file_set(Watirmark::Configuration.instance.complete_import_path_names)
end

And(/^I choose the working import file on the Import screen$/) do
  import = Giving::Imports.new()
  import.new_import_choose_file_set(Watirmark::Configuration.instance.complete_import_path)
end

And(/^I choose the incomplete import file on the Import screen$/) do
  import = Giving::Imports.new()
  import.new_import_choose_file_set(Watirmark::Configuration.instance.incomplete_import_path)
end

And(/^I choose the incomplete import file for names on the Import screen$/) do
  sleep 2
  import = Giving::Imports.new()
  import.new_import_choose_file_set(Watirmark::Configuration.instance.incomplete_import_path_names)
  sleep 1
end

And(/^I choose the '([^']*)' file on the Import screen$/) do |filename|
  sleep 2
  import = Giving::Imports.new()
  import.new_import_choose_file_set(Watirmark::Configuration.instance.file_path_root + filename + ".csv")
  # import.new_import_choose_file_set(Watirmark::Configuration.instance.kim_file_path)
  sleep 1
end

And(/^I set the Select the Type of Information to Import to '([^']*)' on the Import screen$/) do |data|
  import = Giving::Imports.new()
  import.type_to_import_select data
end

And(/^I set the Country to '([^']*)' on the Import screen$/) do |country|
  import = Giving::Imports.new()
  import.import_country_select country
end

And(/I set the name format to '([^']*)' on the Import screen$/) do |option|
  sleep 2
  import = Giving::Imports.new()
  import.import_name_format_select option
  sleep 1
end

And(/^I click Next on the Import screen$/) do
  sleep 1
  import = Giving::Imports.new()
  import.import_next_click
  sleep 2
end

And(/^I click Next on the Import step 1$/) do
  import = Giving::Imports.new()
  import.import_next_click
  import.import_step_2_is_loaded?
end

And(/^I click Next on the Import step 2$/) do
  import = Giving::Imports.new()
  import.import_next_click
  import.import_step_3_is_loaded?
end

And(/^I click Next on the Import step 3$/) do
  import = Giving::Imports.new()
  import.import_next_click
  import.import_step_4_is_loaded?
end

And(/^I click Next on the Import step 4$/) do
  import = Giving::Imports.new()
  import.import_next_click
  import.import_step_5_is_loaded?
end

And(/^I click Import Another eTapestry Field on the Import screen$/) do
  import = Giving::Imports.new()
  import.import_another_field_click
  sleep 1
end

And(/^I click '([^']*)' on the Import Field pop up$/) do |field|
  import = Giving::Imports.new()
  import.import_address_lines_click field
end

And(/^I click on the '([^']*)' mapping icon on the Import screen$/) do |field|
  import = Giving::Imports.new()
  import.mapping_icon_click field
end

And(/^I set the '([^']*)' dropdown to '([^']*)' on the Import Screen$/) do |field, option|
  import = Giving::Imports.new()
  import.field_option_select(field,option)
end

And(/^I click on the '([^']*)' mapping icon for names on the Import screen$/) do |field|
  import = Giving::Imports.new()
  import.mapping_icon_names_click field
end

And(/^I click '([^']*)' from my file$/) do |field|
  import = Giving::Imports.new()
  import.import_mapping_field_click field
end

And(/^I click '([^']*)' and '([^']*)' from my file$/) do |field1, field2|
  import = Giving::Imports.new()
  import.import_mapping_fields_click field1, field2
end

And(/^I the X on the Import mapping pop up$/) do
  import = Giving::Imports.new()
  import.import_mapping_x_click
end

And(/^I mark the Individual fields checkbox next to '([^']*)' on the import screen$/) do |field|
  import = Giving::Imports.new()
  import.individual_fields_checkbox_set field
end

And(/^I mark the Family fields checkbox next to '([^']*)' on the import screen$/) do |field|
  import = Giving::Imports.new()
  import.family_fields_checkbox_set field
end

And(/^I mark the Business fields checkbox next to '([^']*)' on the import screen$/) do |field|
  import = Giving::Imports.new()
  import.business_fields_checkbox_set field
end

And(/^I mark the other fields checkbox next to '([^']*)' on the import screen$/) do |field|
  import = Giving::Imports.new()
  import.other_fields_checkbox_set field
end

And(/^I set all of the duplicates to '([^']*)' on the import screen$/) do |dupes|
  import = Giving::Imports.new()
  import.handle_duplicates_select dupes
  import.click_apply_button

end

And(/^I should see '([^']*)' listed as a possible duplicate$/) do |name|
  import = Giving::Imports.new()
  expect(import.possible_duplicates_exist? name).to eq(true)
end

Then(/^I should see the Import Summary page$/) do
  sleep 2
  import = Giving::Imports.new()
  expect(import.on_import_summary_page?).to eq(true)
end

And(/^I should see '([^']*)' on the Import Summary page$/) do |text|
  sleep 1
  import = Giving::Imports.new()
  expect(import.import_summary_contains? text).to eq(true)
end
#
# And(/^I should see '([^']*)' for Accounts Created on the Import Summary page$/) do |text|
#   import = Giving::Imports.new()
#   expect(import.accounts_created).to eq(text)
# end

And(/^I clear the old import data$/) do
  step "I delete existing data for 'Joseph Hicks'"
end

And(/^I receive the following import message: '([^']*)'$/) do |msg|
  sleep 5
  import = Giving::Imports.new()
  expect(import.error_message_contains? msg).to eq(true)
end

And(/^I click Delete below the '([^']*)' on the Standard eTapestry Imports screen$/) do |name|
  import = Giving::Imports.new()
  import.import_template_delete_click name
end

And(/^I click Yes to delete the import template$/) do
  import = Giving::Imports.new()
  import.confirm_delete_click
end

Then(/^I should not see the '([^']*)' import template$/) do |name|
  import = Giving::Imports.new()
  expect(import.import_template_exists? name).to eq(false)
end

And(/^I see the error '([^']*)' on step 5 of the import process$/) do |msg|
  sleep 5
  import = Giving::Imports.new()
  expect(import.error_message_details_contains? msg).to eq(true)
end

And (/^I mark the Key checkbox in the Individual Name Format section next to Account Name on the import screen/) do
  import = Giving::Imports.new()
  import.ind_account_name_checkbox_click
end

And (/^I create a query for accounts created today to verify that none of them were created with blank names/) do
  import = Giving::Imports.new()

  step "I click Queries on the main menu"
  step "I click on Manage Queries on the queries menu"
  step "I click on the 'Search Query Results' category"

  if (import.import_verification_query_exists?)
    step "I click preview below the 'accounts created today without a first name' query on the Create a New Query page"
    step "I should see '0 Accounts' results on the query preview page"

  else
    step "I click 'New Query' on the Edit Query Category page"
    step "I set the Name to 'accounts created today without a first name' on the Create a New Query page"
    step "I click on the Search Fields tab on the Create a New Query page"
    step "I enter 'created' into the search field on the Create a New Query page"
    step "I press Enter on the keyboard"
    step "I click on 'Account Created Date' under Search Fields on the Create a New Query page"
    step "I set the Account Created Date Range Type to 'Today'"
    step "I enter 'name' into the search field on the Create a New Query page"
    step "I press Enter on the keyboard"
    step "I click on 'First Name' under Search Fields on the Create a New Query page"
    step "I set the First Name query criteria to Field Has No Value"
    step "I click Save And 'Preview'"
    step "I should see '0 Accounts' results on the query preview page"
  end
end

And (/^I set the Account Created Date Range Type to '([^']*)'/) do |value|
  import = Giving::Imports.new()
  import.set_account_created_date_range(value)
end

And (/^I set the First Name query criteria to Field Has No Value/) do
  import = Giving::Imports.new()
  import.set_first_name_to_no_value
end

And (/^In the All other fields section I set the '([^']*)' mapping field to '([^']*)' on the Import Screen/) do |field, value|
  import = Giving::Imports.new()
  import.set_import_mapping_field_value_manually(field, value)
end

And (/^In the Individual Name Format section I set the '([^']*)' mapping field to '([^']*)' on the Import Screen/) do |field, value|
  import = Giving::Imports.new()
  import.set_ind_name_mapping_field_value_manually(field, value)
end

And (/^I verify that import template '([^']*)' has cleared out the leading and trailing spaces/) do |value|
  landing = Admin::Landing.new
  landing.management_click
  landing.management_dd_import_click
  step "I click 'Standard eTapestry Imports' on the Imports screen"
  import = Giving::Imports.new
  import.click_run_import_link(value)
  step "I choose the 'TL Spaces For Automation B' file on the Import screen"
  step "I set the name format to 'Assign Individual to all accounts' on the Import screen"
  import.import_next_click
  step "In the Individual Name Format section I should see the 'Title' mapping field set to '[Title]' on the Import Screen"
  step "In the Individual Name Format section I should see the 'First Name' mapping field set to '[First]' on the Import Screen"
  step "In the Individual Name Format section I should see the 'Middle Name' mapping field set to '[Middle]' on the Import Screen"
  step "In the Individual Name Format section I should see the 'Last Name' mapping field set to '[Last]' on the Import Screen"
  step "In the Individual Name Format section I should see the 'Suffix' mapping field set to 'RN.' on the Import Screen Alternate Step"
  step "In the Individual Name Format section I should see the 'Account Name' mapping field set to '[First] [Middle] [Last]' on the Import Screen"
  step "In the Individual Name Format section I should see the 'Sort Name' mapping field set to '[Last], [First] [Middle]' on the Import Screen"
  step "In the Individual Name Format section I should see the 'Short Salutation' mapping field set to '[First]' on the Import Screen"
  step "In the Individual Name Format section I should see the 'Long Salutation' mapping field set to '[Title] [Last]' on the Import Screen"
  step "In the Individual Name Format section I should see the 'Envelope Salutation' mapping field set to '[Title] [First] [Middle] [Last]' on the Import Screen"
  step "In the All other fields section I should see the 'Persona Type' mapping field set to '[Persona Type]' on the Import Screen"
  step "In the All other fields section I should see the 'Date' mapping field set to '[Date]' on the Import Screen"
  step "In the All other fields section I should see the 'Received' mapping field set to '[Received]' on the Import Screen"
  step "In the All other fields section I should see the 'Fund' mapping field set to 'General' on the Import Screen Alternate Step"
  step "In the All other fields section I should see the 'Gift Type' mapping field set to 'Check' on the Import Screen Alternate Step"
  step "In the All other fields section I should see the 'Address Lines' mapping field set to '[Address]' on the Import Screen"
  step "In the All other fields section I should see the 'City' mapping field set to '[City]' on the Import Screen"
  step "In the All other fields section I should see the 'State/Province' mapping field set to '[State]' on the Import Screen"
  step "In the All other fields section I should see the 'Postal Code' mapping field set to '[Postal Code]' on the Import Screen"
  step "In the All other fields section I should see the 'Voice' mapping field set to '[Voice]' on the Import Screen"
  step "In the All other fields section I should see the 'Email' mapping field set to '[Email]' on the Import Screen"
  step "In the All other fields section I should see the 'Check Date' mapping field set to '[Check Date]' on the Import Screen"
  step "In the All other fields section I should see the 'Check Number' mapping field set to '[Check Number]' on the Import Screen"
  step "In the All other fields section I should see the 'Gender' mapping field set to 'Female' on the Import Screen Alternate Step"
  step "In the All other fields section I should see the 'Attributes' mapping field set to '[Attributes]' on the Import Screen"
  step "In the All other fields section I should see the 'Maiden Name' mapping field set to '[Maiden Name]' on the Import Screen"
  step "In the All other fields section I should see the 'Date of Birth' mapping field set to '[Date of Birth]' on the Import Screen"
end

And (/^In the Individual Name Format section I should see the '([^']*)' mapping field set to '\[([^']*)\]' on the Import Screen$/) do |field, value|
  import = Giving::Imports.new
  expect(import.ind_name_format_field_value(field)).to eq('[' + value + ']')
end

And (/^In the Individual Name Format section I should see the '([^']*)' mapping field set to '([^']*)' on the Import Screen Alternate Step$/) do |field, value|
  import = Giving::Imports.new
  expect(import.ind_name_format_field_value(field)).to eq(value)
end

And (/^In the All other fields section I should see the '([^']*)' mapping field set to '\[([^']*)\]' on the Import Screen/) do |field, value|
  import = Giving::Imports.new
  expect(import.all_other_fields_field_value(field)).to eq('[' + value + ']')
end

And (/^In the All other fields section I should see the '([^']*)' mapping field set to '([^']*)' on the Import Screen Alternate Step/) do |field, value|
  import = Giving::Imports.new
  expect(import.all_other_fields_field_value(field)).to eq(value)
end

And (/^I verify that the account for Danielle D Davidson has been imported correctly/) do
  step "I type 'Danielle' into the dynamic search field"
  search = Account::Search.new
  search.press_enter
  step "I click on 'Danielle D Davidson' in the search results"
  step "I click on 'Personas' in the account header"
  step "I set the Persona to '* Personal' on the Personas page"
  step "the Address Lines should be set to '741 Main St.'"
  step "the City should be set to 'Indianapolis'"
  step "the State should be set to 'IN'"
  step "the Postal Code should be set to '46022'"
  step "the Voice should be set to '(317) 336-3827'"
  step "the Email should be set to 'kimberly.hammer@blackbaud.com'"
  step "the Short Salutation should be set to 'Danielle'"
  step "the Long Salutation should be set to 'Mrs. Davidson'"
  step "the Envelope Salutation should be set to 'Mrs. Danielle D Davidson'"
  step "I click on 'Defined Fields' in the account header"
  step "the 'Attributes' should be set to 'Volunteer'"
  step "the 'Gender' should be set to 'Female'"
  step "the 'Date of Birth' should be set to '11/1/1979'"
  step "the 'Maiden Name' should be set to 'Smith'"
  step "I click on 'Account Settings' in the account header"
  step "the Name Format value should be set to 'Individual'"
  step "the Title should be set to 'Mrs.'"
  step "the First Name should be set to 'Danielle'"
  step "the Middle Name should be set to 'D'"
  step "the Last Name should be set to 'Davidson'"
  step "the Suffix should be set to 'RN.'"
  step "the Account Name should be set to 'Danielle D Davidson'"
  step "the Sort Name should be set to 'Davidson, Danielle D'"
  step "I click on 'Journal' in the account header"
  steps %Q{
    And I click on the Gift listed in the journal
    And the date should be set to '8/4/2016'
    And the Received Amount should be set to '$20.00'
    And the Fund should be set to 'General'
    And the Check Date should be set to '8/4/2016'
    And the Check Number should be set to '126'
  }
end


And (/^I verify that the account for Ellie Anne D Von Elder has been imported correctly/) do
  step "I type 'Ellie' into the dynamic search field"
  search = Account::Search.new
  search.press_enter
  step "I click on 'Ellie Anne D Von Elder' in the search results"
  step "I click on 'Personas' in the account header"
  step "I set the Persona to '* Personal' on the Personas page"
  step "the Address Lines should be set to '741 Main St.'"
  step "the City should be set to 'Indianapolis'"
  step "the State should be set to 'IN'"
  step "the Postal Code should be set to '46022'"
  step "the Voice should be set to '(317) 336-3827'"
  step "the Email should be set to 'kimberly.hammer@blackbaud.com'"
  step "the Short Salutation should be set to 'Ellie Anne'"
  step "the Long Salutation should be set to 'Mrs. Von Elder'"
  step "the Envelope Salutation should be set to 'Mrs. Ellie Anne D Von Elder'"
  step "I click on 'Defined Fields' in the account header"
  step "the 'Attributes' should be set to 'Volunteer, Member'"
  step "the 'Gender' should be set to 'Female'"
  step "the 'Date of Birth' should be set to '11/1/1979'"
  step "the 'Maiden Name' should be set to 'Smith'"
  step "I click on 'Account Settings' in the account header"
  step "the Name Format value should be set to 'Individual'"
  step "the Title should be set to 'Mrs.'"
  step "the First Name should be set to 'Ellie Anne'"
  step "the Middle Name should be set to 'D'"
  step "the Last Name should be set to 'Von Elder'"
  step "the Suffix should be set to 'RN.'"
  step "the Account Name should be set to 'Ellie Anne D Von Elder'"
  step "the Sort Name should be set to 'Von Elder, Ellie Anne D'"
  step "I click on 'Journal' in the account header"
  steps %Q{
    And I click on the Gift listed in the journal
    And the date should be set to '8/5/2016'
    And the Received Amount should be set to '$25.00'
    And the Fund should be set to 'General'
    And the Check Date should be set to '8/5/2016'
    And the Check Number should be set to '126'
  }
end