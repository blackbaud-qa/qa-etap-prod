And (/^I click Journal on the Gail Burch account/) do
  gift = Giving::GiftPledge.new
  gift.journal_link_click
end

And (/^I select '([^']*)' from the Add New... drop down menu$/) do |value|
  gift = Giving::GiftPledge.new
  gift.select_add_new_journal_entry value
end

And(/^I set the date to Today on the new pledge page/) do
    gift = Giving::GiftPledge.new(:new_pledge_date => Date.today.strftime('%x'))
end

And (/^I set the Pledged Amount to '([^']*)'/) do |amount|
  gift = Giving::GiftPledge.new(:set_pledged_field => amount)
  gift.create
end

And (/^I click Create Pledge Schedule on the new pledge page/) do
  gift = Giving::GiftPledge.new
  gift.create_pledge_schedule_click
end

And (/^I set the Frequency to '([^']*)'/) do |value|
  gift = Giving::GiftPledge.new
  gift.select_frequency value
end

And (/^I set the First Installment Date to Today/) do
  gift = Giving::GiftPledge.new(:first_installment_date => Date.today.strftime('%x'))
end

And (/^I set the Installment Amount to '([^']*)'/) do |amount|
  gift = Giving::GiftPledge.new(:set_installment_amount => amount)
  gift.create
end

And (/^I click Add a Payment for this Pledge/) do
  gift = Giving::GiftPledge.new
  gift.add_payment_click
end

And (/^I set the Check Date to '([^']*)' on the new payment page/) do |date|
  gift = Giving::GiftPledge.new(:set_payment_check_date => date)
end

And (/^I set the Check number to '([^']*)' on the new payment page/) do |value|
  gift = Giving::GiftPledge.new(:set_check_number => value)
  gift.create
end