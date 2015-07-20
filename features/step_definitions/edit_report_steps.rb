And(/^I click on the name of the report '([^']*)'$/) do |report|
  select = Reports::Editreportscategory.new
  select.report_click report
end

And(/^I set the name to '([^']*)' on the edit report page$/) do |name|
  select = Reports::Editreportscategory.new(:report_name => name)
  # select.clear_name_field
  select.create
end

And(/^I click save on the edit report page$/) do
  select = Reports::Editreportscategory.new
  select.edit_report_save_click
end

Then(/^I should see the report renamed to '([^']*)'$/) do |name|
  select = Reports::Editreportscategory.new
  expect(select.report_exists? name).to eq(true)
end

And(/^I rename the report to '([^']*)' for future tests$/) do |name|
  step "I click on the name of the report 'Test 1'"
  step "I set the name to '" + name + "' on the edit report page"
  step "I click save on the edit report page"
end

And(/^I click on the plus next to Sort Name on the edit report page$/) do
  sleep 2
  select = Reports::Editreportscategory.new
  select.sort_name_expand_click
end

And(/^I choose the sort order Z on the edit report page$/) do
  sleep 1
  select = Reports::Editreportscategory.new
  select.sort_order_z_click
end

And(/^I click on Run Report under the report '([^']*)'$/) do |report|
  select = Reports::Editreportscategory.new
  select.run_specific_report report
end

And(/^I click on the drop down next to the field Group Report on the edit report page$/) do
  select = Reports::Editreportscategory.new
  select.group_report_dropdown_click
end

And(/^I select '([^']*)' for the Group Report field on the edit report page$/) do |group|
  select = Reports::Editreportscategory.new
  select.group_report_select group
end

And(/^I click on the X next to the field State$/) do
  sleep 2
  select = Reports::Editreportscategory.new
  select.delete_state_field_click
end

Then(/^I should see the report displayed to screen without the State field$/) do
  select = Reports::Editreportscategory.new
  expect(select.state_field_present?).to eq(false)

end