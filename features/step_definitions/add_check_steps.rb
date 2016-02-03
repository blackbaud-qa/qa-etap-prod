
And(/^set the date field to '([^']*)'$/) do |date|
  search = Giving::GiftPledge.new(:date_field=>date)
  search.create
end

And(/^set the Received Amount field to '([^']*)'$/) do |amount|
  search = Giving::GiftPledge.new(:received_field=>amount)
  search.create
end

And(/^set the Gift Type to Check$/) do
  landing = Giving::GiftPledge.new
  landing.set_gift_type_check
end

And(/^set the Check Date to '([^']*)'$/) do |date|
  search = Giving::GiftPledge.new(:check_date=>date)
  search.create
end

And(/^set the Check Number to '([^']*)'$/) do |check|
  search = Giving::GiftPledge.new(:check_number=>check)
  search.create
end

And(/^click on Tribute Information$/) do
  search = Giving::GiftPledge.new
  search.tribute_bar_click

end

And(/^click on the Search Glass$/) do
  search = Giving::GiftPledge.new
  search.search_glass_click

end

And(/^the Soft Credit Amount to '([^']*)'$/) do |credit|
  amount = Giving::GiftPledge.new(:credit_amount=>credit)
  amount.create
end

And(/^select Edit from the drop down menu$/) do
  landing = Giving::GiftPledge.new
  landing.select_edit
end



