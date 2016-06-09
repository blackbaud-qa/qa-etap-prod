# And(/^I set the Gender to '([^']*)' on the live fundraiser page$/) do |gender|
#   fund = Management::Fundraisers.new()
#   fund.live_fundraiser_gender_select gender
# end


And(/^I click Make a Donation on the live fundraiser page$/) do
  fund = Management::Fundraisers.new()
  fund.make_donation_click
end

And(/^I select Donate Toward a Team or Individual's Goal on the live fundraiser page$/) do
  sleep 2
  fund = Management::Fundraisers.new()
  fund.team_goal_select
end

And(/^I search for '([^']*)' on the live fundraiser page$/) do |name|
  fund = Management::Fundraisers.new(:fund_team_search => name)
  fund.create
  fund.team_search_click
end

And(/^I select Sponsor John Crabtree - Individual on the live fundraiser page$/) do
  fund = Management::Fundraisers.new()
  fund.john_sponsor_set
end

And(/^I set the First Name field to '([^']*)' on the live fundraiser donation page$/) do |name|
  fund = Management::Fundraisers.new(:billing_first_name => name)
  fund.create
end

And(/^I set the Last Name field to '([^']*)' on the live fundraiser donation page$/) do |name|
  fund = Management::Fundraisers.new(:billing_last_name => name)
  fund.create
end

And(/^I set the Country to '([^']*)' on the live fundraiser donation page$/) do |country|
  fund = Management::Fundraisers.new()
  fund.billing_country_select country
end

And(/^I set the Address to '([^']*)' on the live fundraiser donation page$/) do |address|
  fund = Management::Fundraisers.new(:billing_address => address)
  fund.create
end

And(/^I set the City to '([^']*)' on the live fundraiser donation page$/) do |city|
  fund = Management::Fundraisers.new(:billing_city => city)
  fund.create
end

And(/^I set the State to '([^']*)' on the live fundraiser donation page$/) do |state|
  fund = Management::Fundraisers.new()
  fund.billing_state_select state
end

And(/^I set the Postal Code to '([^']*)' on the live fundraiser donation page$/) do |zip|
  fund = Management::Fundraisers.new(:billing_zip => zip)
  fund.create
end

And(/^I set the Phone to '([^']*)' on the live fundraiser donation page$/) do |phone|
  fund = Management::Fundraisers.new(:billing_phone => phone)
  fund.create
end

And(/^I set the Email field to '([^']*)' on the live fundraiser donation page$/) do |email|
  fund = Management::Fundraisers.new(:billing_email => email)
  fund.create
end

And(/^I set the donation type to '([^']*)' on the live fundraiser donation page$/) do |type|
  fund = Management::Fundraisers.new()
  fund.donation_type_select type
end

And(/^I set the donation amount to '([^']*)' on the live fundraiser donation page$/) do |amount|
  fund = Management::Fundraisers.new(:billing_amount => amount)
  fund.create
end

And(/^I click Find a Team Participant on the live fundraiser page$/) do
  sleep 2
  fund = Management::Fundraisers.new()
  fund.find_team_click
end

And(/^I search for '([^']*)' on the live fundraiser participant search page$/) do |name|
  fund = Management::Fundraisers.new(:participant_search_name => name)
  fund.create
  fund.participant_search_click
end

And(/^I click on '([^']*)' on the live fundraiser participant search page$/) do |name|
  fund = Management::Fundraisers.new()
  fund.participant_search_results_click name
end

Then(/^I should see '([^']*)' listed as a donor$/) do |name|
  fund = Management::Fundraisers.new()
  expect(fund.participant_donors_contains? name).to eq(true)
end

And(/^I expand the Tribute, Soft Credit, Matching Gift Relationships section$/) do
  gift = Giving::GiftPledge.new
  gift.tribute_
end

Then (/^I should see the Total Raised Amount as '([^']*)' on the Fundraiser home page$/) do |value|
  sleep 2
  fund = Management::Fundraisers.new()
  expect(fund.fundraiser_total_raised(value)).to eq(true)
end