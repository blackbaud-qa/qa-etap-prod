
# And(/^I type '([^']*)' into the dynamic search field$/) do |search|
#   search = Account::AdvancedSearch.new(:dynamic_search_field=>search)
#   search.create
# end


And(/^I click the magnifying glass$/) do
  search = Account::AdvancedSearch.new
  search.click_magnifying_glass
end

And(/^I pause for 3 seconds or more$/) do
  search = Account::AdvancedSearch.new
  search.pause
end

Then(/^choose the option from the dynamic drop down$/) do
  search = Account::AdvancedSearch.new
  search.choose_from_dynamic_drop_down
end