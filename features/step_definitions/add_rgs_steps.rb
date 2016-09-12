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
  sleep 2
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

And(/^I click My Organization/) do
  rgs = Giving::GiftPledge.new
  rgs.my_organization_click
end

And(/^I click on the '([^']*)' processor/) do |value|
  rgs = Giving::GiftPledge.new
  rgs.ecommerce_processor(value)
end

And(/^I verify that the Supports EFT checkbox is marked/) do
  rgs = Giving::GiftPledge.new
  rgs.verify_eft_enabled
end

And(/^I set the Routing Number to '([^']*)'/) do |value|
  rgs = Giving::GiftPledge.new(:eft_routing_number=>value)
  rgs.create
end

And(/^I set the Account Number to '([^']*)'/) do |value|
  rgs = Giving::GiftPledge.new(:eft_account_number=>value)
  rgs.create
end

And (/^I create a manual recurring gift schedule/) do
  step "I type 'Niles Baker' into the dynamic search field"
  step "I press Enter on the keyboard"
  step "I click on 'Niles Baker' in the search results"
  step "I click on 'Journal' in the account header"
  step "select Recurring Gift Schedule from the Add New... drop down menu"
  step "I set the date to Today on the new pledge page"
  step "set the Installment Amount to '7.00' on the Recurring Gift Schedule"
  step "set the Fund to 'General'"
  step "set the Campaign to 'Capital'"
  step "set the Approach to 'Direct Mail'"
  step "I set the First Installment Date to Today"
  step "I set the Recurring Gift Schedule Frequency to 'Monthly (12)'"
  step "I change the process type to Manual"
  step "I click Save And 'Edit'"
end

And(/^I change the process type to Manual/) do
  rgs = Giving::GiftPledge.new
  rgs.select_manual_process
end

And (/^I enter a stop date of '([^']*)' on the recurring gift schedule/) do |value|
  rgs = Giving::GiftPledge.new(:rgs_stop_date=>value)
  rgs.create
  step "I click Save And 'Go to Journal'"
end

Then (/^I should not be able to add a recurring gift to the recurring gift schedule/) do
  rgs = Giving::GiftPledge.new
  expect(rgs.add_installment_button).to eq(false)
end

Then (/^I should be able to add a recurring gift to the recurring gift schedule/) do
  rgs = Giving::GiftPledge.new
  expect(rgs.add_installment_button).to eq(true)
end