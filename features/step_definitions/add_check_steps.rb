
And(/^set the date field to '([^']*)'$/) do |date|
  search = Giving::GiftPledge.new(:date_field=>date)
  # search.create
  search.set_date_field
end

And(/^set the Received Amount field to '([^']*)'$/) do |amount|
  search = Giving::GiftPledge.new(:received_field=>amount)
  # search.create
  search.set_received_field
end

And(/^set the Gift Type to Check$/) do
  landing = Giving::GiftPledge.new
  landing.set_gift_type
end

And(/^set the Check Date to '([^']*)'$/) do |date|
  search = Giving::GiftPledge.new(:check_date=>date)
  search.set_check_date
end

And(/^set the Check Number to '([^']*)'$/) do |check|
  search = Giving::GiftPledge.new(:check_number=>check)
  search.set_check_number
end


And(/^click on Tribute Information$/) do
  search = Giving::GiftPledge.new
  search.tribute_bar_click

end

And(/^click on the Search Glass$/) do
  search = Giving::GiftPledge.new
  search.search_glass_click

end

And(/^set the Tribute Information to '([^']*)'$/) do |tribute|
  landing = Giving::GiftPledge.new(:tribute_search=>tribute)
  landing.set_tribute
  landing.create
end




