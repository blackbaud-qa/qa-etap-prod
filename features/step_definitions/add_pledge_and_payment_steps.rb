And (/^I click Journal on the Gail Burch account/) do
  gift = Giving::GiftPledge.new
  gift.journal_link_click
end

And(/^I set the date to Today on the new pledge page/) do
    gift = Giving::GiftPledge.new(:new_pledge_date => Date.today.strftime('%x'))
end

And (/^I set the Pledged Amount to '([^']*)'/) do |amount|
  gift = Giving::GiftPledge.new(:set_pledged_field => amount)
  gift.create
  sleep 2
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

And (/^I set the Check Date to Today on the new payment page/) do
  gift = Giving::GiftPledge.new(:set_payment_check_date => Date.today.strftime('%x'))
  gift.create
end

And (/^I set the Check number to '([^']*)' on the new payment page/) do |value|
  gift = Giving::GiftPledge.new(:set_check_number => value)
  gift.create
end

And (/^I click on the User Defined Fields section on the new payment page/) do
  gift = Giving::GiftPledge.new
  gift.user_defined_fields_section_click
end

And (/^I click on the Gift Types section on the new payment page/) do
  sleep 3
  gift = Giving::GiftPledge.new
  gift.gift_types_section_click
end

And (/^I set the UDF '([^']*)' to '([^']*)' on the new payment page/) do |udf, value|
  gift = Giving::GiftPledge.new
  gift.click_payment_udf(udf)
  gift.set_payment_udf_value(udf, value)
end

And (/^I should see '([^']*)' set to '([^']*)' on the payment page/) do |udf, value|
  gift = Giving::GiftPledge.new
  expect(gift.payment_page_udf(udf)).to eq(value)
end

And (/^I click Delete on the transaction page/) do
  gift = Giving::GiftPledge.new
  gift.payment_delete_click
  # gift.get_rid_of_ok
  sleep 2
end

And (/^I click Pledge on the journal page/) do
  gift = Giving::GiftPledge.new
  gift.pledge_entry_click
end

And (/^I click More Options on the journal page/) do
  gift = Giving::GiftPledge.new
  gift.more_options_link_click
end

And (/^I click the Filters icon/) do
  sleep 5
  gift = Giving::GiftPledge.new
  gift.filters_icon_click
end

#TODO: Remove due to Sky
And (/^I click Uncheck All on the journal page/) do
  gift = Giving::GiftPledge.new
  gift.uncheck_all_link_click
end

And (/^I click Clear button on the journal filter/) do
  gift = Giving::GiftPledge.new
  gift.clear_button_click
end

And (/^I mark the checkbox next to Pledge on the journal page/) do
  gift = Giving::GiftPledge.new
  gift.pledge_checkbox_click
end

And (/^I mark the checkbox next to Participation on the journal page/) do
  gift = Giving::GiftPledge.new
  gift.participation_checkbox_click
end

And (/^I click Find on the journal page/) do
  gift = Giving::GiftPledge.new
  #gift.find_button_journal_page_click
  gift.apply_journal_filters_click
  sleep 3
end

Then (/^I should see the message '([^']*)' on the journal page/) do |message|
  sleep 2
  gift = Giving::GiftPledge.new
  expect(gift.journal_entry_exists? message).to eq(true)
end

And(/^I delete the duplicate info note on the journal page$/) do
  gift = Giving::giftPledge.new
  gift.journal_page_delete_note
end

And (/^I mark the checkbox next to Copy Pledge Defined Fields on Future Payments/) do
  sleep 3
  gift = Giving::GiftPledge.new
  gift.copy_pledge_udfs_click
end

And (/^I click on the Pledge Information section on the transaction page/) do
  sleep 2
  gift = Giving::GiftPledge.new
  gift.click_pledge_information
end

And (/^I click into the Received Amount field/) do
  sleep 1
  gift = Giving::GiftPledge.new
  gift.pledge_received_amount_click
  sleep 0.5
end