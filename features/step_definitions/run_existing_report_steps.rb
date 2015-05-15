And(/^I click on run report next to the report Test$/) do
  run = Reports::Editreportscategory.new
  run.run_report
end

And(/^I click on the drop down box for query category Base$/) do
  category = Reports::Editreportscategory.new
  category.select_category_base
end

And(/^I click on the drop down box for query name All Constituents$/) do
  category = Reports::Editreportscategory.new
  category.select_query_all_constituents
end

Then(/^I should see the report title '([^']*)' and all columns displayed to screen$/) do |page_title|
  category = Reports::Editreportscategory.new
  category.see_test_report? page_title
end
