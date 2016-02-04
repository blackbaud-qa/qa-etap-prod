When(/^I delete existing data for '([^']*)'$/) do |name|
  step "I click Accounts on the main menu"
  step "I click on Find an Account on the accounts menu"
  step "I type '" + name + "' into the search field"
  step "I press Enter on the keyboard"
  search = Account::Search.new
  if search.account_name_exists? name
    step "I click on '" + name + "' on the accounts page"
    step "I click Journal"
    gift = Giving::GiftPledge.new
    if (gift.gift_link_present?)
      step "I click on the Gift listed in the journal"
      step "I click Delete on the transaction page"
      # step "I should close the javascript popup"

    end
    if (gift.soft_credit_link_present?)
      step "I click on the Soft Credit listed in the journal"
      step "I click Delete on the soft credit page"
      # step "I should close the javascript popup"
    end

    step "I click on the account settings page on the accounts page"
    step "I click Delete Role on the Account Settings page"
    step "I click Yes on the Account Settings page"
  end
end

And(/^I delete the existing transactions in the journal$/) do

  count = 0
  gift = Giving::GiftPledge.new
  while (!(gift.journal_entry_exists? "0 Journal Entries") && (count<10))
    count += 1

    if (gift.gift_link_present?)
      step "I click on the Gift listed in the journal"
      step "I click Delete on the transaction page"
      # step "I should close the javascript popup"

    end

    if (gift.soft_credit_link_present?)
      step "I click on the Soft Credit listed in the journal"
      step "I click Delete on the soft credit page"
      # step "I should close the javascript popup"
    end

    if(gift.split_transaction_link_present?)
      step "I click on the split transaction in the journal"
      step "I click Delete on the split transaction page"
    end

    if(gift.pledge_link_present?)
      step "I click on the Pledge listed in the journal"
      step "I click Delete on the transaction page"
    end
  end

  sleep 1

end

And(/^I click on the Soft Credit listed in the journal$/) do
  gift = Giving::GiftPledge.new
  gift.journal_soft_credit_gift_click
end

And(/^I click Delete on the soft credit page$/) do
  gift = Giving::GiftPledge.new
  gift.journal_soft_credit_delete_click
end

And(/^I click on the Pledge listed in the journal$/) do
  gift = Giving::GiftPledge.new
  gift.journal_pledge_click
end

And(/^I click Register on the live fundraiser page$/) do
  fund = Management::Fundraisers.new()
  fund.register_click
end

And(/^I select I need to create an account on the live fundraiser page$/) do
  fund = Management::Fundraisers.new()
  fund.create_account_select
end

And(/^I click Next on the live fundraiser page$/) do
  fund = Management::Fundraisers.new()
  fund.live_fundraiser_next_click
end

And(/^I set the First Name field to '([^']*)' on the live fundraiser page$/) do |name|
  fund = Management::Fundraisers.new(:live_fundraiser_first_name => name)
  fund.create
end

And(/^I set the Last Name field to '([^']*)' on the live fundraiser page$/) do |name|
  fund = Management::Fundraisers.new(:live_fundraiser_last_name => name)
  fund.create
end

And(/^I set the Email field to '([^']*)' on the live fundraiser page$/) do |email|
  fund = Management::Fundraisers.new(:live_fundraiser_email => email)
  fund.create
end

And(/^I set the Password field to '([^']*)' on the live fundraiser page$/) do |password|
  fund = Management::Fundraisers.new(:live_fundraiser_password => password)
  fund.create
end

And(/^I set the Confirm Password field to '([^']*)' on the live fundraiser page$/) do |password|
  fund = Management::Fundraisers.new(:live_fundraiser_confirm_password => password)
  fund.create
end

And(/^I set the Security Question to '([^']*)' on the live fundraiser page$/) do |question|
  fund = Management::Fundraisers.new()
  fund.security_question_set question
end

And(/^I set the Security Answer to '([^']*)' on the live fundraiser page$/) do |answer|
  fund = Management::Fundraisers.new(:live_fundraiser_security_answer => answer)
  fund.create
end

And(/^I set the Country to '([^']*)' on the live fundraiser page$/) do |country|
  fund = Management::Fundraisers.new()
  fund.live_fundraiser_country_select country
end

And(/^I set the Address to '([^']*)' on the live fundraiser page$/) do |address|
  fund = Management::Fundraisers.new(:live_fundraiser_address => address)
  fund.create
end

And(/^I set the City to '([^']*)' on the live fundraiser page$/) do |city|
  fund = Management::Fundraisers.new(:live_fundraiser_city => city)
  fund.create
end

And(/^I set the State to '([^']*)' on the live fundraiser page$/) do |state|
  fund = Management::Fundraisers.new()
  fund.live_fundraiser_state_select state
end

And(/^I set the Postal Code to '([^']*)' on the live fundraiser page$/) do |postal|
  fund = Management::Fundraisers.new(:live_fundraiser_postal => postal)
  fund.create
end

And(/^I set the Phone to '([^']*)' on the live fundraiser page$/) do |phone|
  fund = Management::Fundraisers.new(:live_fundraiser_phone => phone)
  fund.create
end

And(/^I set the Gender to '([^']*)' on the live fundraiser page$/) do |gender|
  fund = Management::Fundraisers.new()
  fund.live_fundraiser_gender_select gender
end

And(/^I select Create a New Team on the live fundraiser page$/) do
  fund = Management::Fundraisers.new()
  fund.live_fundraiser_create_new_team_set
end

And(/^I set the Name to '([^']*)' on the live fundraiser page$/) do |name|
  fund = Management::Fundraisers.new(:live_fundraiser_fund_name => name)
  fund.create
end

And(/^I set the Participation Level to Runner on the live fundraiser page$/) do
  fund = Management::Fundraisers.new()
  fund.live_fundraiser_runner_set
end

And(/^I mark the checkbox next to Use my account information for billing on the live fundraiser page$/) do
  fund = Management::Fundraisers.new()
  fund.live_fundraiser_use_account_billing_set
end

And(/^I select credit card for payment method on the live fundraiser page$/) do
  fund = Management::Fundraisers.new()
  fund.live_fundraiser_payment_type_cc_set
end

And(/^I set the card type to '([^']*)' on the live fundraiser page$/) do |card|
  fund = Management::Fundraisers.new()
  fund.live_fundraiser_card_type_set card
end

And(/^I set the Card Number to '([^']*)' on the live fundraiser page$/) do |number|
  fund = Management::Fundraisers.new(:live_fundraiser_card_number => number)
  fund.create
end

And(/^I set the Security Code to '([^']*)' on the live fundraiser page$/) do |number|
  fund = Management::Fundraisers.new(:live_fundraiser_card_security => number)
  fund.create
end

And(/^I set the Expiration Month to '([^']*)' on the live fundraiser page$/) do |exp|
  fund = Management::Fundraisers.new()
  fund.live_fundraiser_card_exp_month_select exp
end

And(/^I set the Expiration Year to '([^']*)' on the live fundraiser page$/) do |exp|
  fund = Management::Fundraisers.new()
  fund.live_fundraiser_card_exp_select exp
end

Then(/^the registration confirmation page should say: '([^']*)'$/) do |msg|
  fund = Management::Fundraisers.new()
  if(fund.previous_name_used?)
    step "I click Next on the live fundraiser page"
    step "I click Next on the live fundraiser page"
  end
  fund = Management::Fundraisers.new()
  begin
    expect(fund.fundraising_content_text_contains? msg).to eq(true)
  rescue Exception => e
    step "I close the current tab"
    raise e
  end
end

When(/^I click Login on the live fundraiser page$/) do
  fund = Management::Fundraisers.new()
  fund.login_click
end

And(/^I set the Email to '([^']*)' on the live fundraiser login page$/) do |email|
  fund = Management::Fundraisers.new(:live_fundraiser_login_email => email)
  fund.create
end

And(/^I set the password to '([^']*)' on the live fundraiser login page$/) do |pass|
  fund = Management::Fundraisers.new(:live_fundraiser_login_pass => pass)
  fund.create
end

And(/^I click Login on the live fundraiser login page$/) do
  fund = Management::Fundraisers.new()
  fund.login_button_click
end

Then(/^the Fundraising Center page should say: '([^']*)'$/) do |title|
  fund = Management::Fundraisers.new()
  begin
    expect(fund.fundraising_content_text_contains? title).to eq(true)
  rescue Exception => e
    step "I close the current tab"
    raise e
  end
end

Then(/^there should be a Participation journal entry$/) do
  gift = Giving::GiftPledge.new
  expect(gift.journal_page_participation_exists?).to eq(true)
end