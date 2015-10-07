And(/^If '([^']*)' exists then delete it$/) do |name|
  category_list = Reports::Editreportscategory.new
  if(category_list.category_name_exists?(name))
    step "I click on delete next to category '#{name}'"
    step "I click yes on the warning message Are you sure you want to delete the item '#{name}' permanently"
  end
end

Then(/^all the '([^']*)' should load$/) do |page_title, report_category_links|
  category_list = Reports::Editreportscategory.new
  expect(category_list.on_report_categories_title? page_title).to eq(true)

  expect(category_list.report_categories_exist? report_category_links.hashes).to eq(true)
end

And(/^I click on New Category$/) do
  select = Reports::Editreportscategory.new
  select.select_task_new_category
end

And(/^I name it '([^']*)'$/) do |name|
  name_report = Reports::Editreportscategory.new(:new_report_category_name => name)
  name_report.create
end

When(/^I click on Save Category$/) do
  save = Reports::Editreportscategory.new
  save.select_save_category
end

Then(/^I should see the category listed$/) do
  page_title = Reports::Editreportscategory.new
  page_title.on_report_categories_page?
end


And(/^I click on copy next to '([^']*)'$/) do |report|
  copy = Reports::Editreportscategory.new
  copy.copy_report(report)
end

Then(/^I accept the defaults$/) do
  default_options = Reports::Editreportscategory.new
  default_options.select_default_options
end

Then(/^I click copy$/) do
  copy = Reports::Editreportscategory.new
  copy.click_copy_button
end

Then(/^the copied report should be displayed in the system category$/) do
  sleep 3
  on_system_category_page = Reports::Editreportscategory.new
  on_system_category_page.on_system_category_page?
end

And(/^I click on move beneath '([^']*)'$/) do |report|
  move = Reports::Editreportscategory.new
  move.move_report(report)
end

And(/^I select '([^']*)' from the new category drop down$/) do |category|
  new_category = Reports::Editreportscategory.new
  new_category.move_to_category(category)
end

When(/^I click on move$/) do
  move = Reports::Editreportscategory.new
  move.click_move_button
end

Then(/^I should see the report listed in the test category$/) do
  sleep 3
  on_test_category_page = Reports::Editreportscategory.new
  on_test_category_page.on_test_categories_page?
end

And(/^I click on the test category$/) do
  category = Reports::Editreportscategory.new
  category.click_test_category_link
end

And(/^I click on delete next to '([^']*)'$/) do |delete_report|
  delete = Reports::Editreportscategory.new
  delete.delete_report(delete_report)
end

And(/^I click on delete next to category '([^']*)'$/) do |name|
  delete = Reports::Editreportscategory.new
  delete.delete_report_category(name)
end

Then(/^I click yes on the warning message Are you sure you want to delete the item '([^']*)' permanently$/) do |delete|
  confirm = Reports::Editreportscategory.new
  confirm.confirm_delete(delete)
end

When(/^I view the Test Category the '([^']*)' should be removed$/) do |report_removed|
  removed = Reports::Editreportscategory.new
  removed.report_deleted(report_removed)
end
