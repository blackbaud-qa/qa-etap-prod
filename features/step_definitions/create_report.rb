
Given (/^the report '([^']*)' does not exist$/) do |report_name|
  step "I am logged into eTap"
  step "I click on reports"
  step "I click on Manage Reports on the reports menu"
  step "I click on the system category"

  # Delete 'Test Report'
  create_report = Reports::Createreport.new
  if (create_report.report_exists? report_name)
    create_report.delete_report report_name
  end
end

And (/^I click on reports$/) do
  landing = Admin::Landing.new
  landing.reports_click
end

And (/^I click on the system category$/) do
  create_report = Reports::Createreport.new
  create_report.system_link_click
end

And (/^I click on new report$/) do
  create_report = Reports::Createreport.new
  create_report.new_report_link_click
end

And (/^I name the report '([^']*)'$/) do |name|
  create_report = Reports::Createreport.new(:new_report_name_textfield => name)
  create_report.create
end

And (/^I choose Fields from the commonly used report fields category$/) do
  create_report = Reports::Createreport.new
  create_report.name_field_link_click
  create_report.address_field_link_click
  create_report.city_field_link_click
  create_report.state_field_link_click
  create_report.postal_code_field_link_click
  create_report.sort_name_field_link_click
  create_report.date_field_link_click
  create_report.fund_field_link_click
  create_report.received_field_link_click
  create_report.address_country_multi_link_click
  create_report.address_country_single_link_click
  create_report.address_without_country_multi_link_click
  create_report.address_without_country_single_link_click
end




And (/^I choose Fields from the Journal category$/) do
  create_report = Reports::Createreport.new
  create_report.hard_credit_address_with_country_multi_link_click
  create_report.hard_credit_address_with_country_single_link_click
  create_report.hard_credit_address_without_country_multi_link_click
  create_report.hard_credit_address_without_country_single_link_click
  create_report.soft_credit_address_with_country_multi_link_click
  create_report.soft_credit_address_with_country_single_link_click
  create_report.soft_credit_address_without_country_multi_link_click
  create_report.soft_credit_address_without_country_single_link_click
  create_report.gift_aid_declaration_address_with_country_multi_link_click
  create_report.gift_aid_declaration_address_with_country_single_link_click
  create_report.gift_aid_declaration_address_without_country_multi_link_click
  create_report.gift_aid_declaration_address_without_country_single_link_click
  create_report.gift_aid_declaration_name_link_click

end


And (/^I choose save and run$/) do
  create_report = Reports::Createreport.new
  create_report.save_and_run_button_click
end

And (/^I choose '([^']*)' category$/)do |category|
  create_report = Reports::Createreport.new
  create_report.select_category category
end

And (/^I choose query category '([^']*)'$/) do |query_category|
  create_report = Reports::Createreport.new
  create_report.select_query_category query_category
end

And (/^I choose query '([^']*)'$/) do |query_name|
  create_report = Reports::Createreport.new
  create_report.select_query query_name
end

And (/^I accept on the default report format '([^']*)'$/) do |report_format|
  create_report = Reports::Createreport.new
  create_report.select_report_format report_format
end

And (/^I click on submit$/) do
  create_report = Reports::Createreport.new
  create_report.submit_button_click
end

And (/^I should see the report '([^']*)' and all columns displayed to screen$/) do |report_name, report_fields_table|
  create_report = Reports::Createreport.new
  expect(create_report.report_title_exists? report_name).to eq(true)

  expect(create_report.report_fields_exist? report_fields_table.hashes).to eq(true)
end