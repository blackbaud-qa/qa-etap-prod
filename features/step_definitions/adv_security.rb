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