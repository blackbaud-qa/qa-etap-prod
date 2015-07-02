When(/^I type '([^']*)' into the dynamic search field$/) do |dynamic_search|
  search = Admin::Landing.new(:dynamic_search=>dynamic_search)
  search.create
end

And(/^I click Journal$/) do
  landing = Account::Profile.new
  landing.journal_link_click
end

And(/^select Gift\/Pledge from the Add New\.\.\. drop down menu$/) do
  landing = Account::Journal.new
  landing.add_entry
end

And(/^set the date to '([^']*)'$/) do |date|
  search = Giving::GiftPledge.new(:date_field=>date)
  search.create
end

 And(/^set the Received Amount to '([^']*)'$/) do |amount|
   search = Giving::GiftPledge.new(:received_field=>amount)
   search.create
 end

And (/^set the Non-Deductible Amount to '([^']*)'$/) do |amount|
  gift = Giving::GiftPledge.new(:non_deductible_field=>amount)
  gift.create
end

And(/^set the Fund to Unrestricted$/) do
    landing = Giving::GiftPledge.new
    landing.fund_input_arrow
    landing.select_fund_unrestricted
end

And(/^set the Campaign to Annual$/) do
  landing = Giving::GiftPledge.new
  landing.campaign_input_arrow
  landing.select_campaign
end

And(/^set the Approach to Unsolicited$/) do
  landing = Giving::GiftPledge.new
  landing.approach_input_arrow
  landing.select_approach_unsolicited
end

And(/^set the Gift Type to Credit\/Debit Card$/) do
  landing = Giving::GiftPledge.new
  landing.select_payment_method
end

And(/^set the Credit\/Debit Card Number to '([^']*)'$/) do |number|
  landing = Giving::GiftPledge.new(:card_number=>number)
  landing.create
end

And(/^set the Expiration Month to '([^']*)'$/) do |month|
  landing = Giving::GiftPledge.new(:expiration_month=> month)
  landing.set_expiration_month
end

And(/^set the Expiration Year to '([^']*)'$/) do |year|
  landing = Giving::GiftPledge.new(:expiration_year=> year)
  landing.set_expiration_year
end

And(/^click Save$/) do
  landing = Giving::GiftPledge.new
  landing.save
end

And(/^select Process Transaction from the drop down menu$/) do
  landing = Giving::GiftPledge.new
  landing.select_process
end

And(/^click yes when the notification pops up$/) do
  landing = Giving::GiftPledge.new
  landing.click_yes
end

And(/^wait for the journal page to display/) do
  journ = Account::Journal.new
  journ.wait_for_page_load
end

And (/^I click on Bob Barker Junior in the search results/) do
  gift = Giving::GiftPledge.new
  gift.bob_barker_junior_click
end

And(/^I click on '([^']*)' in the search results$/) do |account|
  gift = Giving::GiftPledge.new
  gift.account_click(account)
end

And (/^I click on the Gift listed in the journal/) do
  gift = Giving::GiftPledge.new
  gift.journal_page_gift_click
end