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
  sleep 2
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
  query = Queries::Createquerycategory.new(:find_account_popup_search => name)
  query.create
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

And (/^I click OK to dismiss the notification about not being able to delete a query/) do
  query = Queries::Createquerycategory.new
  query.cannot_delete_query_ok_click
end

And (/^I click '([^']*)' in the Tasks menu/) do |value|
  query = Queries::Createquerycategory.new
  query.tasks_menu_link_click(value)
end

Then (/^I should see the '([^']*)' category has been removed from the page/) do |category|
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

