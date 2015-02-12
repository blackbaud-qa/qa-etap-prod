And(/^click the date field$/) do
  landing = Account::Journal.new
  landing.click_date
end

And(/^set the Date '([^']*)'$/) do |date|
  landing = Giving::GiftPledge.new(:date_field=>date)
  landing.create
end

And(/^set the Check Date field to '([^']*)'$/) do |date|
  search = Giving::GiftPledge.new(:check_date=>date)
  search.create
end


And(/^set the Check Number field to '([^']*)'$/) do |check|
  search = Giving::GiftPledge.new(:check_number=>check)
  search.create
end

And(/^click Save and Edit$/) do
  search = Giving::GiftPledge.new
  search.saveAnd
end


