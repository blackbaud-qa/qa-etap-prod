And (/^I mark this as a Favorite Query/) do
  query = Queries::Createquerycategory.new
  query.mark_query_as_favorite
end

And (/^I set the Query Type to Static/) do
  query = Queries::Createquerycategory.new
  query.set_query_type_static
end

And (/^I type '([^']*)' into the Account Name field on the Create a New Query page/) do |name|
  query = Queries::Createquerycategory.new(:query_account_name => name)
  query.create
end

And (/^I click the favorite query titled '([^']*)'/) do |name|
  query = Queries::Createquerycategory.new
  query.favorite_query_link(name)
end

And (/^I am taken to the Edit Custom Account Query Screen for '([^']*)'/) do |name|
  query = Queries::Createquerycategory.new
  expect(query.edit_custom_query_page).to eq(name)
end