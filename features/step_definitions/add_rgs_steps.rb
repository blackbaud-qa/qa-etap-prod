And(/^I click on '([^']*)' in the account header/) do |link|
  rgs = Giving::GiftPledge.new
  rgs.account_header_link link
end

And(/^I change the process type to Auto/) do
  rgs = Giving::GiftPledge.new
  rgs.select_auto_process
end

And(/^set the Installment Amount to '([^']*)' on the Recurring Gift Schedule/) do |amount|
  rgs = Giving::GiftPledge.new(:rgs_installment_amount=>amount)
  rgs.create
end

And(/^I set the Recurring Gift Schedule Frequency to '([^']*)'/) do |value|
  rgs = Giving::GiftPledge.new
  rgs.select_rgs_frequency(value)
end

And(/^I click Gift Types/) do
  rgs = Giving::GiftPledge.new
  rgs.gift_types_section_click
end

And(/^I set the Gift Type to '([^']*)'/) do |value|
  rgs = Giving::GiftPledge.new
  rgs.set_gift_type(value)
end

And(/^I click on the '([^']*)' in the journal/) do |type|
  rgs = Giving::GiftPledge.new
  rgs.journal_entry_click(type)
end

And(/^I should see the message '([^']*)' on the recurring gift screen/) do |message|
  gift = Giving::GiftPledge.new
  expect(gift.recurring_gift_message? message).to eq(true)
end

And(/^the date field on the transaction screen should be populated with Today/) do
  gift = Giving::GiftPledge.new
  expect(gift.verify_transaction_date_value).to eq(Date.today.strftime('%x'))
end