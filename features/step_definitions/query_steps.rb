And (/^I click New Category on the Query Categories page/) do
  query = Queries::Createquerycategory.new
  query.new_query_category_click
end

And (/^I set the Name to '([^']*)' on the Create Query Category page/) do |value|
  query = Queries::Createquerycategory.new(:set_query_category_name => value)
  query.create
end

And (/^I click Save Category on the Query Categories page/) do
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
  expect(query.query_results_my_org).to eq(true)
end

Then (/^I should see '([^']*)' in the query results/) do |name|
  query = Queries::Createquerycategory.new
  expect(query.query_preview_results(name)).to eq(true)
end

Then (/^the query category '([^']*)' does not exist/) do |cat|
  query = Queries::Createquerycategory.new
  step "I am logged into eTap"
  step "I click Queries on the main menu"
  if query.string_exists_on_page?(cat)
    query.delete_query_category_click cat
    query.delete_query_category_yes_click
  end
end
=begin
Then (/^the query category '([^']*)' does exist/) do |cat|
  query = Queries::Createquerycategory.new
  step "I am logged into eTap"
  step "I click Queries on the main menu"
  if (!query.string_exists_on_page?(cat))
    query.delete_query_category_click cat
    query.delete_query_category_yes_click
  end
end
=end
Then (/^the query '([^']*)' does not exist in the '([^']*)' category/) do |query_name, cat|
  query = Queries::Createquerycategory.new
  step "I click Queries on the main menu"
  step "I click on the '#{cat}' category"

  if query.string_exists_on_page?(query_name)
    query.delete_query_click query_name
    query.delete_query_category_yes_click
  end
end
=begin
Then (/^the query '([^']*)' exists in the '([^']*)' category/) do |query_name, cat|
  query = Queries::Createquerycategory.new
  step "I click on the '#{cat}' category"

  if (!query.string_exists_on_page?(query_name))
    query.delete_query_click query_name
  end
end
=end
Then (/^a query category should exist called '([^']*)'/) do |cat|
  query = Queries::Createquerycategory.new
  step "I am logged into eTap"
  step "I click Queries on the main menu"
  if query.string_exists_on_page?(cat)
    # do nothing
  else
    step "I click New Category on the Query Categories page"
    step %Q[I set the Name to '#{cat}' on the Create Query Category page]
    step "I click Save Category on the Query Categories page"
  end

  # if query.is_warning_present?
  #   step "I click Queries on the main menu"
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


And (/^a specific query 'Donations made in January 2015' has been created in the 'Critical Process Testing' category/) do
  query = Queries::Createquerycategory.new
  step "I click Queries on the main menu"
  step "I click on the 'Critical Process Testing' category"

  if (!query.string_exists_on_page?('Donations made in January 2015'))
    step "I click Queries on the main menu"
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
  step "I click on the 'Critical Process Testing' category"

  if (!query.string_exists_on_page?('Donors Named John - Custom Query'))
    step "I click Queries on the main menu"
    step "I click on the 'Critical Process Testing' category"
    step "I click 'New Query' on the Edit Query Category page"
    step "I set the Name to 'Donors Named John' on the Create a New Query page"
    step "I set the data return type to 'Accounts' on the Create a New Query page"
    step "I set the Available Fields category to 'Account' on the Create a New Query page"
    step "I click on 'Short Salutation' under Available Fields on the Create a New Query page"
    step "I type 'John' into the Short Salutation field on the Create a New Query page"
    step "I click Save And 'Preview'"
    step "I click Edit on the query preview screen"
    step "I click Save And 'Create Custom Query'"
    step "I set the Name to 'Donors Named John - Custom Query' on the Create a New Query page"
    step "I click Save And 'Preview'"
  end
end