And (/^I set the Starting Criteria Query Category to '([^']*)'/) do |value|
  query = Queries::Createquerycategory.new
  query.query_starting_criteria_category(value)
end

And (/^I set the Starting Criteria Query to '([^']*)'/) do |value|
  query = Queries::Createquerycategory.new
  query.query_starting_criteria_query(value)
end

And (/^I should be on the '([^']*)' query preview screen/) do |value|
  query = Queries::Createquerycategory.new
  expect(query.query_preview_on_screen value).to eq(true)
end

And (/^I set the Query Type to Dynamic/) do
  query = Queries::Createquerycategory.new
  query.set_query_type_dynamic
end