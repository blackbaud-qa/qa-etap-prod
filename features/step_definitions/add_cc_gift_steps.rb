When(/^I type '([^']*)' into the dynamic search field$/) do |dynamic_search|
  search = Admin::Landing.new(:dynamic_search=>dynamic_search)
  search.create
end

And(/^I click Journal$/) do
  landing = Account::Profile.new
  landing.journal_link_click
end

And(/^select ([^']*) from the Add New\.\.\. drop down menu$/) do |operation|
  sleep 2
  landing = Account::Journal.new

  if operation == 'Gift/Pledge'
    landing.select_gift_pledge
  elsif operation == 'Contact'
    landing.select_contact
  elsif operation == 'Split Transaction'
    landing.select_split_transaction
  elsif operation == 'Recurring Gift Schedule'
    landing.select_recurring_gift_schedule
  elsif operation == 'Recurring Gift'
    landing.select_recurring_gift
  elsif operation == 'Soft Credit'
    landing.select_soft_credit
  elsif operation == 'Disbursement'
    landing.select_disbursement
  elsif operation == 'Note'
    landing.select_note
  elsif operation == 'Contact'
    landing.select_contact
  elsif operation == 'Participation'
    landing.select_participation
  elsif operation == 'Planned Giving'
    landing.select_planned_giving
  elsif operation == 'Calendar Item'
    landing.select_calendar_item
  end
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

And(/^set the transaction to Finalized$/) do
  landing = Giving::GiftPledge.new
  landing.set_finalized_checkbox 'enable'
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

And(/^set the name on credit card to ([^']*)$/) do |credit_card_name|
  landing = Giving::GiftPledge.new(:credit_card_name=>credit_card_name)
  landing.create
end

And(/^set the Expiration Month to '([^']*)'$/) do |month|
  landing = Giving::GiftPledge.new()
  landing.set_expiration_month month
end

And(/^set the Expiration Year to '([^']*)'$/) do |year|
  landing = Giving::GiftPledge.new()
  landing.set_expiration_year year
end

And(/^click Save$/) do
  landing = Giving::GiftPledge.new
  landing.save
end

And(/^click Save and ([^']*)$/) do |save_and_option|
  landing = Giving::GiftPledge.new
  landing.set_save_and save_and_option
  landing.saveAnd
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
  sleep 30
  journ = Account::Journal.new
  journ.wait_for_page_load
end

And(/^I click on '([^']*)' in the search results$/) do |account|
  sleep 2
  gift = Giving::GiftPledge.new
  gift.account_click(account)
end

And (/^I click on the Gift listed in the journal/) do
  gift = Giving::GiftPledge.new
  gift.journal_page_gift_click
end

And(/^I click on the Note listed in the journal$/) do
  gift = Giving::GiftPledge.new
  gift.journal_page_note_click
end

And(/^I click delete on the note page$/) do
  gift = Giving::GiftPledge.new
  gift.note_page_delete_click
end

And(/^I delete the note if present$/) do
  gift = Giving::GiftPledge.new
  if (gift.note_present?)
    step "I click on the Note listed in the journal"
    step "I click delete on the note page"
  end

end

And (/^I add a credit card gift for ([^']*) dollars to ([^']*)/) do |amount, constituent|
  steps %Q{
    When I type '#{constituent}' into the dynamic search field
    And I press Enter on the keyboard
    And I click on '#{constituent}' in the search results
    And I click Journal
    And select Gift/Pledge from the Add New... drop down menu
    And set the date to '10/30/2015'
    And set the Received Amount to '#{amount}'
    And set the Fund to 'Unrestricted'
    And set the Campaign to 'Annual'
    And set the Approach to 'Unsolicited'
    And set the Gift Type to Credit/Debit Card
    And set the Credit/Debit Card Number to '4111111111111111'
    And set the name on credit card to #{constituent}

    And set the Expiration Month to '8'
    And set the Expiration Year to '2025'
    And click Save
    And select Process Transaction from the drop down menu
    And click yes when the notification pops up
  }
end

And (/^I add a finalized credit card gift for ([^']*) dollars to ([^']*)/) do |amount, constituent|
  steps %Q{
    When I type '#{constituent}' into the dynamic search field
    And I press Enter on the keyboard
    And I click on '#{constituent}' in the search results
    And I click Journal
    And select Gift/Pledge from the Add New... drop down menu
    And set the transaction to Finalized
    And set the date to '10/30/2015'
    And set the Received Amount to '#{amount}'
    And set the Fund to 'Unrestricted'
    And set the Campaign to 'Annual'
    And set the Approach to 'Unsolicited'
    And set the Gift Type to Credit/Debit Card
    And set the Credit/Debit Card Number to '4111111111111111'
    And set the name on credit card to #{constituent}

    And set the Expiration Month to '8'
    And set the Expiration Year to '2016'
    And click Save
    And select Process Transaction from the drop down menu
    And click yes when the notification pops up
  }
end