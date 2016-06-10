And (/^I click New Category on the Query Categories page/) do
  query = Queries::Createquerycategory.new
  query.new_query_category_click
end

And (/^I set the Name to '([^']*)' on the Create Query Category page/) do |value|
  sleep 2
  query = Queries::Createquerycategory.new(:set_query_category_name => value)
  query.create
end

And (/^I click Save Category on the Query Categories page/) do
  sleep 2
  query = Queries::Createquerycategory.new
  query.save_new_query_category_click
end

And (/^I click delete below the '([^']*)' query category/) do |category|
  query = Queries::Createquerycategory.new
  query.delete_query_category_click(category)
end

And (/^I click Yes to permanently delete the item/) do
  sleep 5
  query = Queries::Createquerycategory.new
  query.delete_query_category_yes_click
end

And (/^I click '([^']*)' on the Edit Query Category page/) do |value|
  sleep 2
  query = Queries::Createquerycategory.new
  query.new_query_task_click(value)
end

And (/^I set the Name to '([^']*)' on the Create a New Query page/) do |value|
  query = Queries::Createquerycategory.new(:set_query_name => value)
  query.create
end

And(/^I click save on the Edit Query Definition page$/) do
  query = Queries::Createquerycategory.new
  query.edit_query_save_click
  step "I should close the javascript popup"
end

And (/^I set the inputs with '([^']*)' with an optional '([^']*)' with '([^']*)' for type account/) do | ids, prefix, values|
  query = Queries::Createquerycategory.new
  if values == '' #If the Whoever Runs This Query box is checked
    query.criteria_account_whoever_runs(ids)
  else #If there is an account name
    query.criteria_account_name(ids, values)
  end
end

And (/^I set the inputs with '([^']*)' with an optional '([^']*)' with '([^']*)' for type numRange/) do |ids, prefix, values|
  query = Queries::Createquerycategory.new
  query.criteria_num_range(prefix, ids, values)
end

And (/^I set the inputs with '([^']*)' with an optional '([^']*)' with '([^']*)' for type requiredTextValues/) do | ids, prefix, values|
  query = Queries::Createquerycategory.new
  if values == 'none'
    query.criteria_text_value_none(prefix)
  elsif values == 'any'
    query.criteria_text_value_any(prefix)
  else
    query.criteria_text_accounts_value(prefix, ids, values)
  end
end

And (/^I set the inputs with '([^']*)' with an optional '([^']*)' with '([^']*)' for type textValues/) do | ids, prefix, values|
  query = Queries::Createquerycategory.new
  if values == 'none'
    query.criteria_text_value_none(prefix)
  elsif values == 'any'
    query.criteria_text_value_any(prefix)
  else
    query.criteria_text_value(prefix, ids, values)
  end
end

And (/^I set the inputs with '([^']*)' with an optional '([^']*)' with '([^']*)' for type checkboxes/) do |ids, prefix, values|
  query = Queries::Createquerycategory.new
  query.criteria_checkboxes(prefix, ids, values)
end

And (/^I set the inputs with '([^']*)' with an optional '([^']*)' with '([^']*)' for type radius/) do |ids, prefix, values|
  query = Queries::Createquerycategory.new
  query.criteria_multiple_textboxes_by_id(prefix, ids, values)
end

And (/^I set the inputs with '([^']*)' with an optional '([^']*)' with '([^']*)' for type select/) do |ids, prefix, values|
  query = Queries::Createquerycategory.new
  query.criteria_select(prefix, ids, values)
end

And (/^I set the inputs with '([^']*)' with an optional '([^']*)' with '([^']*)' for type radio/) do | ids, prefix, values|
  query = Queries::Createquerycategory.new
  query.criteria_radio(prefix, ids, values)
end

And (/^I set the inputs with '([^']*)' with an optional '([^']*)' with '([^']*)' for type phone number/) do | ids, prefix, values|
  query = Queries::Createquerycategory.new

  split_values = values.partition(',')
  phone_type = split_values[0].strip
  phone_values = split_values[2].strip

  query.criteria_phone_type(phone_type)
  if phone_values == 'none' #If the Field has no value box is checked
    query.criteria_text_value_none(prefix)
  elsif phone_values == 'any' #If the Field has any value box is checked
    query.criteria_text_value_any(prefix)
  else #If there is a phone number
    query.criteria_phone_number_value(prefix, phone_values)
  end
end

And (/^I set the inputs with '([^']*)' with an optional '([^']*)' with '([^']*)' for type relationship attributes/) do | ids, prefix, values|
  query = Queries::Createquerycategory.new
  query.criteria_relationship_atributes(ids, prefix, values)
end

And (/^I set the inputs with '([^']*)' with an optional '([^']*)' with '([^']*)' for type arrears/) do | ids, prefix, values|
  query = Queries::Createquerycategory.new
  query.criteria_arrears(prefix, ids, values)
end

And (/^I set the inputs with '([^']*)' with an optional '([^']*)' with '([^']*)' for type dateRange/) do | ids, prefix, values|
  query = Queries::Createquerycategory.new
  query.criteria_date_range(prefix, ids, values)
end

And (/^I set the inputs with '([^']*)' with an optional '([^']*)' with '([^']*)' for type textNumRange/) do | ids, prefix, values|
  query = Queries::Createquerycategory.new
  if values == 'none'
    query.criteria_text_value_none(prefix)
  elsif values == 'any'
    query.criteria_text_value_any(prefix)
  else
    query.criteria_multiple_textboxes_by_id(prefix, ids, values)
  end
end

And (/^I set the inputs with '([^']*)' with an optional '([^']*)' with '([^']*)' for type firstLast/) do | ids, prefix, values|
  query = Queries::Createquerycategory.new
  query.criteria_first_last(prefix, ids, values)
end

And (/^I set the inputs with '([^']*)' with an optional '([^']*)' with '([^']*)' for type checkbox refs/) do | ids, prefix, values|
  query = Queries::Createquerycategory.new
  query.criteria_checkbox_refs(prefix, ids, values)
end

And (/^I set the inputs with '([^']*)' with an optional '([^']*)' with '([^']*)' for type cartItems/) do | ids, prefix, values|
  query = Queries::Createquerycategory.new
  query.click_cart_home_button
  query.criteria_cart_items(prefix, ids, values)
end

And (/^I set the data return type to '([^']*)' on the Create a New Query page/) do |value|
  query = Queries::Createquerycategory.new
  query.select_data_return_type(value)
end

And (/^I click on '([^']*)' under Available Fields on the Create a New Query page/) do |item|
  query = Queries::Createquerycategory.new
  query.click_query_criteria(item)
end

And (/^I set the Available Fields category to '([^']*)' on the Create a New Query page/) do |category|
  query = Queries::Createquerycategory.new
  query.select_query_criteria_category(category)
end

And (/^I set the Journal Entry Date Range Type to '([^']*)' on the Create a New Query page/) do |value|
  query = Queries::Createquerycategory.new
  query.select_journal_entry_date(value)
end

And (/^I set the Journal Entry Date Start Date to '([^']*)' on the Create a New Query page/) do |value|
  query = Queries::Createquerycategory.new(:set_jed_start_date => value)
  query.create
end

And (/^I set the Journal Entry Date End Date to '([^']*)' on the Create a New Query page/) do |value|
  query = Queries::Createquerycategory.new(:set_jed_end_date => value)
  query.create
end

And (/^I set Individual Transaction Received to '([^']*)' '([^']*)' on the Create a New Query page/) do |item,value|
  query = Queries::Createquerycategory.new(:itr_first_comparison_amount => value)
  query.create
  query.select_itr_first_comparison(item)
end

And (/^I select Journal Entry Type '([^']*)' on the Create a New Query page/) do |type|
  query = Queries::Createquerycategory.new
  #query.create
  query.select_journal_entry_type_checkbox(type)
end

And (/^I click Edit on the query preview screen/) do
  query = Queries::Createquerycategory.new
  query.edit_query_click
end

And (/^I click delete below the '([^']*)' query on the Create a New Query page/) do |name|
  query = Queries::Createquerycategory.new
  query.delete_query_click(name)
end

And (/^I click Add on the Create a New Query page/) do
  query = Queries::Createquerycategory.new
  query.custom_account_query_add_click
end

And (/^I click on '([^']*)' in the Find Account popup window/) do |name|
  query = Queries::Createquerycategory.new
  query.custom_account_query_add_name_click(name)
end

And (/^I click Close in the Find Account popup window/) do
  query = Queries::Createquerycategory.new
  query.find_account_popup_close_click
end

And (/^I type '([^']*)' into the search field in the Find Account popup window/) do |name|
  sleep 5
#  query = Queries::Createquerycategory.new(:find_account_popup_search => name)
#  query.create
  query = Queries::Createquerycategory.new
  sleep 3
  query.set_find_account_popup_search name
end

And (/^I click Find in the Find Account popup window/) do
  query = Queries::Createquerycategory.new
  query.find_account_popup_find_click
end

And (/^I set Combine the Queries to Subtract/) do
  query = Queries::Createquerycategory.new
  query.combine_queries_subtract_click
end

And (/^I set the query 1 category to '([^']*)' on the Create a New Query page/) do |category|
  query = Queries::Createquerycategory.new
  query.compound_category_one_select(category)
end

And (/^I set the query 1 query to '([^']*)' on the Create a New Query page/) do |value|
  query = Queries::Createquerycategory.new
  query.compound_query_one_select(value)
end

And (/^I set the query 2 category to '([^']*)' on the Create a New Query page/) do |category|
  query = Queries::Createquerycategory.new
  query.compound_category_two_select(category)
end

And (/^I set the query 2 query to '([^']*)' on the Create a New Query page/) do |value|
  query = Queries::Createquerycategory.new
  query.compound_query_two_select(value)
end

And (/^I set Combine the Queries to Add/) do
  query = Queries::Createquerycategory.new
  query.combine_queries_add_click
end

And (/^I type '([^']*)' into the Name field on the Create a New Query page/) do |name|
  sleep 2
  query = Queries::Createquerycategory.new(:query_criteria_name_field => name)
  query.create
end

And (/^I type '([^']*)' into the Short Salutation field on the Create a New Query page/) do |name|
  sleep 2
  query = Queries::Createquerycategory.new(:query_criteria_short_salutation_field => name)
  query.create
end

And (/^I type '([^']*)' into the State field on the Create a New Query Page$/) do |state|
  sleep 2
  query = Queries::Createquerycategory.new(:query_criteria_state_field => state)
  query.create
end

And (/^I click OK to dismiss the notification about not being able to delete a query/) do
  query = Queries::Createquerycategory.new
  query.cannot_delete_query_ok_click
end

And (/^I click '([^']*)' in the Tasks menu/) do |value|
  query = Queries::Createquerycategory.new
  query.tasks_menu_link_click(value)
end

Then (/^I should see the '([^']*)' category has been removed from the page/) do |category|
  sleep 3
  query = Queries::Createquerycategory.new
  expect(query.try_to_click_on_query_category(category)).to eq(false)
end

And (/^I click preview below the '([^']*)' query on the Create a New Query page/) do |name|
  query = Queries::Createquerycategory.new
  query.preview_query_click(name)
end

And (/^I should see I should see my organization account in the query results/) do
  query = Queries::Createquerycategory.new
  # expect(query.query_results_my_org).to eq(true)
  step "I type 'Ground' into the query preview search field"
  step "I click on the magnifying glass in the search field"
  step "I should see 'Ground Zero AutomationBot US' in the query results"
end

And (/^I search for '([^']*)' in the query results$/) do |name|
  sleep 3
  query = Queries::Createquerycategory.new(:query_search_field => name)
  query.create
end

Then (/^I should see '([^']*)' in the query results/) do |name|
  sleep 3
  query = Queries::Createquerycategory.new
  expect(query.query_preview_results(name)).to eq(true)
end

Then (/^I should not see '([^']*)' in the query results/) do |name|
  query = Queries::Createquerycategory.new
  expect(query.query_preview_results(name)).to eq(false)
end

Then (/^the query category '([^']*)' does not exist/) do |cat|
  query = Queries::Createquerycategory.new
  step "I am logged into eTap"
  step "I click Queries on the main menu"
  step "I click on Manage Queries on the queries menu"
  if query.string_exists_on_page?(cat)
    query.delete_query_category_click cat
    query.delete_query_category_yes_click
  end
end

Then (/^the query '([^']*)' does not exist in the '([^']*)' category/) do |query_name, cat|
  query_does_not_exist_in_category query_name, cat
end

def query_does_not_exist_in_category query_name, cat
  query = Queries::Createquerycategory.new
  step "I click Queries on the main menu"
  step "I click on Manage Queries on the queries menu"
  step "I click on the '#{cat}' category"

  if query.string_exists_on_page?(query_name)
    query.delete_query_click query_name
    query.delete_query_category_yes_click
  end
end

def query_exists_in_category? query_name, cat
  query = Queries::Createquerycategory.new
  step "I click Queries on the main menu"
  step "I click on Manage Queries on the queries menu"
  step "I click on the '#{cat}' category"

  query.string_exists_on_page?(query_name)
end

Then (/^a query category should exist called '([^']*)'/) do |cat|
  query = Queries::Createquerycategory.new
  step "I am logged into eTap"
  step "I click Queries on the main menu"
  step "I click on Manage Queries on the queries menu"
  if query.string_exists_on_page?(cat)
    # do nothing
  else
    step "I click New Category on the Query Categories page"
    step %Q[I set the Name to '#{cat}' on the Create Query Category page]
    step "I click Save Category on the Query Categories page"
  end

  # if query.is_warning_present?
  #   step "I click Queries on the main menu"
  #   step "I click on Manage Queries on the queries menu"
  # end
end

Then (/^a query '([^']*)' has been created in the '([^']*)' category/) do |query, cat|
  from_date = "1/1/" + (Time.now.year - 1).to_s
  to_date   = "12/31/" + (Time.now.year - 1).to_s
  step "I click on the '#{cat}' category"
  step "I click 'New Query' on the Edit Query Category page"
  step %Q[I set the Name to '#{query}' on the Create a New Query page]
  step "I set the data return type to 'Journal Entries' on the Create a New Query page"
  step "I set the Available Fields category to 'Commonly Used Fields' on the Create a New Query page"
  step "I click on 'Journal Entry Date' under Available Fields on the Create a New Query page"
  step "I set the Journal Entry Date Range Type to 'Custom Range' on the Create a New Query page"
  step %Q[I set the Journal Entry Date Start Date to '#{from_date}' on the Create a New Query page]
  step %Q[I set the Journal Entry Date End Date to '#{to_date}' on the Create a New Query page]
  step "I click on 'Journal Entry Types' under Available Fields on the Create a New Query page"
  step "I select Journal Entry Type 'Gift' on the Create a New Query page"
  step "I click Save And 'Preview'"
end

Then (/^a query '([^']*)' for name '([^']*)' has been created/) do |query_name, account_name|
  if (not query_exists_in_category? query_name, 'Base')
    step "I click Queries on the main menu"
    step "I click on Manage Queries on the queries menu"
    step "I click on the 'Base' category"
    step "I click 'New Query' on the Edit Query Category page"
    step %Q[I set the Name to '#{query_name}' on the Create a New Query page]
    step "I set the data return type to 'Accounts' on the Create a New Query page"
    step "I set the Available Fields category to 'Account' on the Create a New Query page"
    step "I click on 'Account Name' under Available Fields on the Create a New Query page"
    step "I set the inputs with 'values' with an optional 'TestEntityRoleForNamesData' with '#{account_name}' for type requiredTextValues"
    step "I click Save And 'Preview'"
  end
end

Then (/^account security query '([^']*)' for name '([^']*)' has been created/) do |query_name, account_name|
  if (not query_exists_in_category? query_name, 'eTapestry Security')
    step "I click Queries on the main menu"
    step "I click on Manage Queries on the queries menu"
    step "I click on the 'eTapestry Security' category"
    step "I click 'New Query' on the Edit Query Category page"
    step %Q[I set the Name to '#{query_name}' on the Create a New Query page]
    step "I set the data return type to 'Accounts' on the Create a New Query page"
    step "I set the Available Fields category to 'Account' on the Create a New Query page"
    step "I click on 'Account Name' under Available Fields on the Create a New Query page"
    step "I set the inputs with 'values' with an optional 'TestEntityRoleForNamesData' with '#{account_name}' for type requiredTextValues"
    step "I click Save And 'Preview'"
  end

end

And (/^a specific query 'Donations made in January 2015' has been created in the 'Critical Process Testing' category/) do
  query = Queries::Createquerycategory.new
  step "I click Queries on the main menu"
  step "I click on Manage Queries on the queries menu"
  step "I click on the 'Critical Process Testing' category"

  if (!query.string_exists_on_page?('Donations made in January 2015'))
    step "I click Queries on the main menu"
    step "I click on Manage Queries on the queries menu"
    step "I click on the 'Critical Process Testing' category"
    step "I click 'New Query' on the Edit Query Category page"
    step "I set the Name to 'Donations made in January 2015' on the Create a New Query page"
    step "I set the data return type to 'Journal Entries' on the Create a New Query page"
    step "I set the Available Fields category to 'Commonly Used Fields' on the Create a New Query page"
    step "I click on 'Journal Entry Date' under Available Fields on the Create a New Query page"
    step "I set the Journal Entry Date Range Type to 'Custom Range' on the Create a New Query page"
    step "I set the Journal Entry Date Start Date to '1/1/2015' on the Create a New Query page"
    step "I set the Journal Entry Date End Date to '1/31/2015' on the Create a New Query page"
    step "I set the Available Fields category to 'Amounts' on the Create a New Query page"
    step "I click on 'Individual Transaction Received' under Available Fields on the Create a New Query page"
    step "I set Individual Transaction Received to 'Greater Than Or Equal To' '.01' on the Create a New Query page"
    step "I click Save And 'Preview'"
    step "I click Edit on the query preview screen"
    step "I set the data return type to 'Accounts' on the Create a New Query page"
    step "I click Save And 'Preview'"
  end
end

And (/^a specific query 'Donors Named John - Custom Query' has been created in the 'Critical Process Testing' category/) do
  query = Queries::Createquerycategory.new
  step "I click Queries on the main menu"
  step "I click on Manage Queries on the queries menu"
  step "I click on the 'Critical Process Testing' category"

  if (!query.string_exists_on_page?('Donors Named John - Custom Query'))
    if (!query.string_exists_on_page?('Donors Named John'))
      step "I click Queries on the main menu"
      step "I click on Manage Queries on the queries menu"
      step "I click on the 'Critical Process Testing' category"
      step "I click 'New Query' on the Edit Query Category page"
      step "I set the Name to 'Donors Named John' on the Create a New Query page"
      step "I set the data return type to 'Accounts' on the Create a New Query page"
      step "I set the Available Fields category to 'Account' on the Create a New Query page"
      step "I click on 'Short Salutation' under Available Fields on the Create a New Query page"
      step "I type 'John' into the Short Salutation field on the Create a New Query page"
      step "I click Save And 'Preview'"
    end
    step "I click Queries on the main menu"
    step "I click on Manage Queries on the queries menu"
    step "I click on the 'Critical Process Testing' category"
    step "I click 'Donors Named John' on the Edit Query Category page"
    # step "I click Save And 'Preview'"
    # step "I click Edit on the query preview screen"
    step "I click Save And 'Create a custom account query'"
    step "I set the Name to 'Donors Named John - Custom Query' on the Create a New Query page"
    step "I click Save And 'Preview'"
  end
end

And (/^I set the Description to '([^']*)' on the Create a New Query page/) do |value|
  query = Queries::Createquerycategory.new(:set_query_description => value)
  query.create
end

And (/^I click Field has any value on the query page/) do
  query = Queries::Createquerycategory.new
  query.field_has_any_value_click
end

Then (/^I should see a query named Donor Review <= Acknowledgement on the Edit Query Category page/) do
  query = Queries::Createquerycategory.new
  expect(query.donor_review).to eq(true)
end

And (/^I should see a description of 2015 Donors <= with a mailing address/) do
  query = Queries::Createquerycategory.new
  expect(query.donor_review_description).to eq(true)
end

Then (/^I should not see a query named Donor Review <= Acknowledgement on the Edit Query Category page/) do
  sleep 3
  query = Queries::Createquerycategory.new
  expect(query.donor_review).to eq(false)
end

And (/^I set the Subject field to '([^']*)' on the Journal Contact page/) do |text|
  query = Queries::Createquerycategory.new()
  query.set_journal_contact_subject(text)
end

And (/^I choose Phone from the Method drop down on the Journal Contact page/) do
  query = Queries::Createquerycategory.new()
  query.journal_contact_method_click
  query.journal_contact_method_phone_click
end

And (/^I set the Contact Subject Text to '([^']*)' on the Create a New Query page/) do |text|
  query = Queries::Createquerycategory.new()
  query.enter_contact_subject_text(text)
end

And (/^I click the plus sign to add another Contact Subject Text field on the Create a New Query page/) do
  query = Queries::Createquerycategory.new
  query.plus_sign_query_criteria
end

And (/^I set the second Contact Subject Text to '([^']*)' on the Create a New Query page/) do |text|
  query = Queries::Createquerycategory.new()
  query.enter_second_contact_subject_text(text)
end

And (/^I should see Displaying 1 - 2 of 2 on the Query Preview page/) do
  query = Queries::Createquerycategory.new
  expect(query.display_query_results).to eq(true)
end

When (/^I click Delete on the query preview screen/) do
  query = Queries::Createquerycategory.new
  query.click_delete_query_preview
end

And (/^I click on the Golf Outing Discussion contact in the Journal/) do
  sleep 2
  query = Queries::Createquerycategory.new
  query.golf_outing_discussion_contact
end

And (/^I click on the Called to Discuss Gala contact in the Journal/) do
  sleep 2
  query = Queries::Createquerycategory.new
  query.gala_contact
end

And (/^I mark the checkbox for '([^']*)' under Journal Entry Types on the Query page/) do |value|
  query = Queries::Createquerycategory.new()
  query.journal_entry_type_selection value
end

And (/^I should see '([^']*)' results on the query preview page/) do |value|
  sleep 3
  query = Queries::Createquerycategory.new()
  expect(query.query_preview_results_total_count(value)).to eq true
end

And (/^I type '([^']*)' into the query preview search field/) do |value|
  query = Queries::Createquerycategory.new(:set_query_preview_search_field => value)
  query.create
end

And (/^I click on the magnifying glass in the search field/) do
  query = Queries::Createquerycategory.new
  query.query_preview_search_magnifying_glass_click
end

And (/^I click Clear Search on the query preview page/) do
  query = Queries::Createquerycategory.new
  query.query_preview_clear_search_click
end

And (/^I remove the Account Name column/) do
  query = Queries::Createquerycategory.new
  query.query_preview_choose_columns_click
  query.column_picker_account_name_click
  query.column_picker_apply_changes_click
end

And (/^I click the back button/) do
  query = Queries::Createquerycategory.new
  query.back_button_click
end

And (/^I should see a journal entry dated '([^']*)' on the query preview page/) do |value|
  query = Queries::Createquerycategory.new()
  expect(query.query_preview_journal_entry_date(value)).to eq(true)
end

And (/^I should see '([^']*)' displayed in the query preview search field/) do |value|
  query = Queries::Createquerycategory.new()
  expect(query.query_preview_search_field_contents).to eq(value)
end

And (/^I click Restore Defaults on the query preview page/) do
  query = Queries::Createquerycategory.new
  query.query_preview_restore_defaults_click
end

And (/^I click on the '([^']*)' for '([^']*)'/) do |type, name|
  query = Queries::Createquerycategory.new()
  query.query_preview_drill_into_journal_entry(type, name)
end

Then (/^I should see the Favorites tile on the left/) do
  query = Queries::Createquerycategory.new
  expect(query.query_favorites_tile_left).to eq(true)
end

And (/^I click on the query titled '([^']*)' in the favorites tile/) do |value|
  query = Queries::Createquerycategory.new
  query.edit_query_favorites_tile value
end

And (/^I should be taken to the '([^']*)' page/) do |value|
  query = Queries::Createquerycategory.new
  expect(query.edit_query_definition_page(value)).to eq(true)
end

And (/^I click the preview icon for the '([^']*)' query in the favorites tile/) do |name|
  query = Queries::Createquerycategory.new
  query.preview_query_favorites_tile name
end

And (/^I click '([^']*)' in the Query Favorites tile/) do |value|
  query = Queries::Createquerycategory.new
  query.see_all_favorites value
end

And (/^I type '([^']*)' into the query favorites modal search field/) do |value|
  query = Queries::Createquerycategory.new(:query_favorites_modal_text => value)
  query.create
end

And (/^I should see '([^']*)' results in the query favorites modal/) do |message|
  query = Queries::Createquerycategory.new
  expect(query.favorites_modal_search? message).to eq(true)
end

And (/^I click the preview icon for the '([^']*)' query in the favorites modal/) do |name|
  query = Queries::Createquerycategory.new
  query.favorites_modal_preview_icon (name)
end

And (/^I click on the query titled '([^']*)' in the query favorites modal/) do |value|
  query = Queries::Createquerycategory.new
  query.edit_query_favorites_modal value
end

#last
When (/^I click to close the query favorites modal/) do
  query = Queries::Createquerycategory.new
  query.close_favorites_modal
end

When (/^I click See all next to Favorites in the query menu/) do
  query = Queries::Createquerycategory.new
  query.see_all_query_favorites_menu
end

And (/^I should see the query favorites modal/) do
  query = Queries::Createquerycategory.new
  expect(query.query_favorites_modal).to eq(true)
end

And (/^I click on '([^']*)' in the query favorites modal/) do |name|
  query = Queries::Createquerycategory.new
  query.select_category_query_favorites_modal name
end

And (/^I click the Mark Query as Favorite link/) do
  query = Queries::Createquerycategory.new
  query.mark_standard_query_as_favorite
end

And (/^I click the Remove from Favorite Queries link/) do
  query = Queries::Createquerycategory.new
  query.remove_standard_query_from_favorites
end

Then (/^I should see the '([^']*)' query in the query favorites modal/) do |name|
  query = Queries::Createquerycategory.new
  expect(query.query_in_favorites_modal(name)).to eq(true)
end

Then (/^I should not see the '([^']*)' query in the favorites modal/) do |name|
  query = Queries::Createquerycategory.new
  expect(query.query_not_in_favorites_modal(name)).to eq (false)
end

When (/I click Cancel in the query favorites modal/) do
  query = Queries::Createquerycategory.new
  query.cancel_query_favorites_modal
end

And (/^I should see the no results found message/) do
  query = Queries::Createquerycategory.new
  expect(query.favorites_search_no_results).to eq(true)
end

And (/^I click Ok to dismiss the query favorites search message/) do
  query = Queries::Createquerycategory.new
  query.dismiss_favorites_no_results
end

And (/^I click the Clear Search button in the query favorites modal/) do
  query = Queries::Createquerycategory.new
  query.clear_search_query_favorites_modal
end

And (/^I set Postal Code to '([^']*)' on the Create a New Query page/) do |value|
  query = Queries::Createquerycategory.new(:query_criteria_postal_code_field => value)
  query.create
end
