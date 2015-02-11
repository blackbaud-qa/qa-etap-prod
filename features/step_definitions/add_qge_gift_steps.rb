And(/^I click Search for an Account$/) do
  thing = Giving::GiftPledge.new
  thing.search_for_an_account_click
end

# And(/^type '([^']*)' into the search field$/) do |name|
#   thing = Giving::GiftPledge.new
#   thing.set_popup_search_text name
# end