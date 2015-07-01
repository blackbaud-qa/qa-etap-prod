And(/^select Split Transaction from the Add New\.\.\. drop down menu$/) do
  landing = Account::Journal.new
  landing.select_split_transaction
end

And(/^set the Received Amount Field to '([^']*)'$/) do |amount|
  search = Giving::GiftPledge.new(:split_received_field=>amount)
  search.create
end

And(/^set the Number Of Segments to '(\d+)'$/) do |segments|
  search = Giving::GiftPledge.new(:segment=>segments)
  search.create
end

And(/^click Add Segments$/) do
  search = Giving::GiftPledge.new
  search.click_add_segments
end

And(/^I set the Received amount on Segment 1 to '([^']*)'/) do |amount|
  gift = Giving::GiftPledge.new(:segment_one_received_amount=>amount)
  gift.create
end

And(/^I set the Fund on Segment 1 to '([^']*)'/) do |name|
  gift = Giving::GiftPledge.new
  gift.set_fund_segment_one name
end
