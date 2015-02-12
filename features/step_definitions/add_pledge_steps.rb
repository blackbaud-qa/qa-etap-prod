And(/^set the Pledged Amount to '([^']*)'$/) do |pledge|
  landing = Giving::GiftPledge.new(:pledged_amount=>pledge)
  landing.create
end

And(/^set the Approach to Direct Mail$/) do
  landing = Giving::GiftPledge.new
  landing.approach_input_arrow
  landing.select_approach_direct_mail
end

# And(/^I click the Create Pledge Schedule bar$/) do
#   landing = Giving::GiftPledge.new
#   landing.click_pledge_information
#   landing.click_create_pledge_schedules
# end


And(/^I click Create Pledge Schedule$/) do
  landing = Giving::GiftPledge.new
  # landing.tribute_bar_click
  # landing.click_pledge_information
  landing.click_create_pledge_schedules
end

And(/^set the Frequency to Monthly$/) do
  landing = Giving::GiftPledge.new
  landing.select_frequency_monthly
end

And(/^set the First Installment Date to '([^']*)'$/) do |date|
  search = Giving::GiftPledge.new(:installment_date=>date)
  search.create
end

And(/^set the Installment Amount to '([^']*)'$/) do |amount|
  search = Giving::GiftPledge.new(:installment_amount=>amount)
  search.create
end

