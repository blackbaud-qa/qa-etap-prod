When(/^I type '([^']*)' into the dynamic search field$/) do |dynamic_search|
  search = Admin::Landing.new(:dynamic_search=>dynamic_search)
  search.create
end

And(/^click Journal$/) do
  landing = Account::Profile.new
  landing.journal_link_click

end

And(/^select Gift\/Pledge from the Add New\.\.\. drop down menu$/) do
  landing = Account::Journal.new
  landing.add_entry
end

And(/^set the date to '([^']*)'$/) do |date|
  search = Giving::GiftPledge.new(:date_field=>date)
  # search.create
  search.set_date
end

 And(/^set the Received Amount to '([^']*)'$/) do |amount|
   search = Giving::GiftPledge.new(:received_field=>amount)
   # search.create
   search.set_received
 end

And(/^set the Fund to Unrestricted$/) do
    landing = Giving::GiftPledge.new
    landing.set_fund
end

And(/^set the Campaign to Annual$/) do
  landing = Giving::GiftPledge.new
  landing.set_campaign
end

And(/^set the Approach to Unsolicited$/) do
  landing = Giving::GiftPledge.new
  landing.set_approach
end

And(/^set the Gift Type to Credit\/Debit Card$/) do
  landing = Giving::GiftPledge.new
  landing.select_payment_method
end

And(/^set the Credit\/Debit Card Number to '([^']*)'$/) do |number|
  landing = Giving::GiftPledge.new(:card_number=>number)
  landing.enter_card_number
end

And(/^set the Expiration Month to '([^']*)'$/) do |month|
  landing = Giving::GiftPledge.new(:expiration_month=> month)
  landing.set_expiration_month
end

And(/^set the Expiration Year to '([^']*)'$/) do |year|
  landing = Giving::GiftPledge.new(:expiration_year=> year)
  landing.set_expiration_year
end

And(/^click Save And Process Transaction$/) do
  landing = Giving::GiftPledge.new
  landing.save
end

Then(/^the gift should process$/) do
  landing = Giving::GiftPledge.new
  landing.click_yes
end
#
# And(/^the gift should save properly$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end