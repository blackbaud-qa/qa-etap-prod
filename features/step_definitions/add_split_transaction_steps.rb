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

And(/^on segment (\d+) set the Received amount to '(\d+)'$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

And(/^set the Approach to Personal Ask$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

And(/^set the Tribute Information to Cindy Grant$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

And(/^set the Soft Credit Information to Anne Hatch$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

And(/^on segment (\d+) set the Received amount to '(\d+)'$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

And(/^set the Fund to General$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

And(/^set the Campaign to Capital$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

And(/^set the Approach to Personal Ask$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

And(/^set the Soft Credit Information to Anne Hatch$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

And(/^set the Transaction UDF to Value B$/) do
  pending # Write code here that turns the phrase above into concrete actions
end



