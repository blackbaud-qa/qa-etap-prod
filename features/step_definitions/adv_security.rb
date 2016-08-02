And (/^I click on the Search Fields tab on the Create a New Query page/) do
  query = Queries::Createquerycategory.new

  query.search_fields_tab_click
end

And (/^I enter '([^']*)' into the search field on the Create a New Query page/) do |value|
  query = Queries::Createquerycategory.new(:search_fields_tab_field => value)
  query.create
end

And (/^I set the State Province field to '([^']*)' on the Create a New Query page/) do |value|
  query = Queries::Createquerycategory.new(:state_province_field => value)
  query.create
end

And (/^I click Security Groups in the Management sub-menu/) do
  query = Queries::Createquerycategory.new
  query.security_groups_click
end

And (/^I click New Security Group/) do
  query = Queries::Createquerycategory.new
  query.new_security_group_link_click
end

And (/^I set Name of the Security Group to '([^']*)'/) do |value|
  query = Queries::Createquerycategory.new(:security_group_name => value)
  query.create
end

And (/^I set the Account Read Query to '([^']*)'/) do |value|
  query = Queries::Createquerycategory.new
  query.select_account_read_query(value)
end

And (/^I click the on User '([^']*)' on the Security Groups page/) do |value|
  query = Queries::Createquerycategory.new
  query.click_on_specific_user_id(value)
end

And (/^I select the Indiana Chapter Security Group on the Rights page/) do
  query = Queries::Createquerycategory.new
  query.select_indiana_chapter_security_group
end

And (/^I fill out the User Account Security page/) do
  query = Queries::Createquerycategory.new(:current_password_field => 'spicypancakes1')
  query.create
  query = Queries::Createquerycategory.new(:new_password_field => 'spicypancakes2')
  query.create
  query = Queries::Createquerycategory.new(:confirm_new_password_field => 'spicypancakes2')
  query.create
  query = Queries::Createquerycategory.new(:security_answer_field => 'Blackbaud')
  query.create
  query.select_security_question
  query.click_save_button
end

And (/^I click Security Rights on the System Defined Fields page/) do
  query = Queries::Createquerycategory.new
  query.click_security_rights_link_sdf_page
end

And (/^I enter '([^']*)' as a value on the Security Rights page/) do |value|
  query = Queries::Createquerycategory.new(:security_right_name_field => value)
  query.create
end

And (/^I click Add Value/) do
  query = Queries::Createquerycategory.new
  query.click_add_value_button
end

And (/^I set the '([^']*)' single select UDF to '([^']*)' on the Defined Fields page/) do |udf,value|
  accounts = Account::AddAccount.new
  accounts.click_udf(udf)
  accounts.set_udf_dropdown_value(udf, value)
end

And (/^I click on the Show All Fields link on the Defined Fields page/) do
  query = Queries::Createquerycategory.new
  query.click_show_all_fields_link
end

And (/^I set the '([^']*)' multi select UDF to '([^']*)' on the Defined Fields page/) do |udf,value|
  accounts = Account::AddAccount.new
  accounts.click_udf(udf)
  accounts.set_udf_checkbox_value(udf, value)
end

And (/^I set the '([^']*)' Code to '([^']*)' on the edit Security Group page/) do |udf,value|
  accounts = Account::AddAccount.new
  accounts.click_udf(udf)
  accounts.set_udf_checkbox_value(udf, value)
end

And (/^I select the Code A Security Group on the Rights page/) do
  query = Queries::Createquerycategory.new
  query.select_code_a_security_group
end

And (/^I add an account to test Security Rights/) do
  step "I click Accounts"
  step "I click on Add Account on the find account screen"
  step "I set the Name Format to 'Individual' on the add account page"
  step "I set the Title to 'Ms.' on the add account page"
  step "I set the First Name to 'Kelsey' on the add account page"
  step "I set the Last Name to 'Hilton' on the add account page"
  step "I set Address Lines to '336 N Pennsylvania Ave' on the classic add account page"
  step "I set City to 'Indianapolis' on the classic add account page"
  step "I set State to 'IN' on the classic add account page"
  step "I set Postal Code to '46225' on the classic add account page"
  step "I set Voice to '317-478-4544' on the classic add account page"
  step "I set Email to 'qa-1@blackbaud.com' on the classic add account page"
  step "I set the UDF 'Company' to 'Blackbaud' on the classic add account page"
  step "I set the UDF 'Account Type' dropdown to 'Individual' in the UDF section on the classic add account page"
  step "I click Save And 'Go to Personas' on the add account page"
  step "I handle the duplicate report if necessary"
end

And (/^I click on the Show All Fields link in the User Defined Fields section/) do
  query = Queries::Createquerycategory.new
  query.click_show_all_fields_link
end

And (/^I set the '([^']*)' multi select UDF to '([^']*)' on the gift screen/) do |udf,value|
  accounts = Account::AddAccount.new
  accounts.click_udf(udf)
  accounts.set_udf_checkbox_value(udf, value)
end